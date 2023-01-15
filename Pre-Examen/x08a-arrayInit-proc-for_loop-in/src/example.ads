package Example with SPARK_Mode is

   type T_Vector is array (Positive range 1 .. Positive'Last) of Integer;
   --  Level 0: 'Last = 20

   procedure Init_For_Loop (V : out T_Vector; Value : Integer) with
     Global => null,
     Depends => (V =>  Value),
     Pre => (Value > 0) and then (V'Last <= Positive'Last -1),
     Post => (for all J in V'Range =>
                V(J) = Value);


end Example;

--  In this example we see that, without loop_invariant we can
--  verify only small loops.
