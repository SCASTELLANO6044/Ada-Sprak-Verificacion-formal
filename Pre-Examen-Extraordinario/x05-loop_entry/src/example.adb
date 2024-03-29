package body Example with SPARK_Mode is

   procedure Increment (X : in out Natural; N : Natural) is
   begin
      for i in 1 .. N loop
         X := X+1;
         pragma Loop_Invariant(X'Loop_Entry + i = X);
      end loop;
   end Increment;

end Example;

--  If the Invariant is not set then errors are reported by
--  the verifier because variable X is modified in the loop,
--  and the formal verifier knows nothing about it unless it
--  is stated in a loop invariant (since loops are proved by
--  the formal verifier relying on mathematical induction!)
