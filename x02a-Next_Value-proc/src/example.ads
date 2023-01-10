--  In this example we have an occurrence of the attribute 'Old
--  in the in-out mode parameter of a procedure.

package Example with
   SPARK_Mode
is

   function Next_Value (X : Integer) return Integer with
      Global  => null,
      Depends => (Next_Value'Result => X),
      Pre     => X <= Integer'Last - 1,
      Post    => Next_Value'Result = X + 1;

   procedure Next_Value (X : in out Integer) with
      Global  => null,
      Depends => (X => X),
      Pre     => X <= Integer'Last - 1,
      Post    => X = X'Old + 1;

end Example;
