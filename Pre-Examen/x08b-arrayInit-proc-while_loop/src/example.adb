package body Example with SPARK_Mode is

   procedure Init_While_Loop (V : out T_Vector; Value : Integer) is
      J : Positive := V'First;
      --Vector : T_Vector (1..20);
   begin

      V := (others => 0);

      while J <= V'Last loop
         V(J) := Value;

         pragma Loop_Variant(Increases => J);
         pragma Loop_Invariant(for all K in V'First .. J =>
                                 V(K) = Value);
         pragma Loop_Invariant(for all L in J+1 .. V'Last =>
                                 V(L) = 0);
         pragma Loop_Invariant(J in V'Range);

         J := J + 1;
      end loop;


   end Init_While_Loop;

end Example;





--  V := (others => 0);
--
--        while J <= V'Last loop
--           V (J) := Value;
--
--           pragma Loop_Variant (Increases => J);
--
--           pragma Loop_Invariant
--             (for all K in V'First .. J =>
--                V (K) = Value);
--
--           pragma Loop_Invariant (J in V'Range);
--
--           J := J + 1;
--        end loop;
