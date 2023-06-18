package body Example with SPARK_Mode is

   procedure Init_While_Loop (V : out T_Vector; Value : Integer) is
      J : Positive := V'First;
   begin
      V := (others => 0);

      while J <= V'Last loop
         V (J) := Value;

         pragma Loop_Variant (Increases => J);

         pragma Loop_Invariant
           (for all K in V'First .. J =>
              V (K) = Value);

         pragma Loop_Invariant (J in V'Range);

         J := J + 1;
      end loop;
   end Init_While_Loop;

end Example;
