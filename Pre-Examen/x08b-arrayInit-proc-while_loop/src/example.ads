package Example with SPARK_Mode is

   type T_Vector is array (Positive range <>) of Integer;

   procedure Init_While_Loop (V : out T_Vector; Value : Integer) with
     Global => null,
     Depends => (V => (V, Value)),
     Pre => (Value > 0 and then V'Last <= Positive'Last -1 and then V'First > 0),
     Post => (for all J in V'Range =>
                V(J) = Value);


end Example;

--  This is a variant of our previous example implemented by means
--  of a while-loop statement.






















 --  Global  => null,
 --      Depends => (V => (V, Value)),
 --      Pre     => V'Length > 0 and then V'Last < Positive'Last,
 --      Post    => (for all J in V'Range =>
 --                    V (J) = Value);
