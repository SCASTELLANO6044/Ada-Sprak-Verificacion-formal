package Example with SPARK_Mode is

   type T_Vector is array (Positive range <>) of Integer;
   --  Level 0: 'Last = 20

   procedure Init_For_Loop (V : in out T_Vector; Value : Integer) with
     Global => null,
     Depends => (V => (V, Value)),
     Pre => V'Length > 0 and then V'Last < Positive'Last,
     Post => (for all j in V'Range => V(j) = Value);

end Example;

--  In this example we see that, without loop_invariant we can
--  verify only small loops.








































--  Global  => null,
--       Depends => (V => Value),
--       Pre     => V'Length > 0,
--       Post    => (for all J in V'Range =>
--                     V (J) = Value)
