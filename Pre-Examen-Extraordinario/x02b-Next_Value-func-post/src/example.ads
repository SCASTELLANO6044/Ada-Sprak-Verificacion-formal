--  Using this example we see how important are the postconditions
--  to verify our code. In order to see it replace the postcondition
--  of this example by "Post => True" and verify the resulting code.

package Example with SPARK_Mode is

   function Next_Value (X : Integer) return Integer
     with 
       Global  => null,
       Depends => (Next_Value'Result => X),
       Pre     => X in 0 .. 100,
       Post    => Next_Value'Result = X + 1;

   function Call_Next_Value return Boolean;
   
end Example;
