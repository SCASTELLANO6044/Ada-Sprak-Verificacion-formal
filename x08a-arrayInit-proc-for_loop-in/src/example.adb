package body Example with SPARK_Mode is

   procedure Init_For_Loop (V : in out T_Vector; Value : Integer) is
   i :Positive := V'First;
   begin
      while i <= V'Last loop
         V(i) := Value;

         pragma Loop_Variant(Increases => i);
         pragma Loop_Invariant (for all j in V'First..i => V(j) = Value);
         pragma Loop_Invariant (for all k in i + 1 ..V'Last => V(k) = V'Loop_Entry(k));
         pragma Loop_Invariant (i in V'Range);

         i := i + 1;
      end loop;
   end Init_For_Loop;

end Example;

--  The invariant is required to handle larger loops!






































--  V := (others => 0);
--
--        for J in V'Range loop
--           V (J) := Value;
--
--  --         pragma Loop_Invariant
--  --           (for all K in V'First .. J =>
--  --              V (K) = Value);
