package Example with SPARK_Mode is

   type T_Vector is array (Positive range 1 .. 3) of Integer;
   --  Level 0: 'Last = 20

   procedure Init_For_Loop (V : out T_Vector; Value : Integer) with
     Global  => null,
     Depends => (V => Value),
     Pre     => V'Length > 0,
     Post    => (for all J in V'Range =>
                   V (J) = Value);

end Example;

--  In this example we see that, without loop_invariant we can
--  verify only small loops.
