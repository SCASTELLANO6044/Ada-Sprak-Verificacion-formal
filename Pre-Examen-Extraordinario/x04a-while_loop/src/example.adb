package body Example with SPARK_Mode is

   procedure While_Test (N : Natural; X : out Integer) is
      A : Integer := 0;
      B : Integer := N;

   begin
      while A <= B loop
         pragma Loop_Variant (Increases => A);
         pragma Loop_Variant (Decreases => B);

         pragma Loop_Invariant(B + A = N);
         A := A + 1;
         B := B - 1;
      end loop;

      X := B;
   end While_Test;

end Example;

--  Without loop invariant errors are reported because the formal verifier
--  knows nothing abount variables modified in the loop unless it is stated
--  in a loop invariant (since loops are proved by the formal verifier
--  relying on mathematical induction!)
