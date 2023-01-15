package body Example with SPARK_Mode is

   procedure Init_For_Loop (V : out T_Vector; Value : Integer) is
   begin
      V := (others => 0);

      for J in V'Range loop
         V (J) := Value;

--         pragma Loop_Invariant
--           (for all K in V'First .. J =>
--              V (K) = Value);
      end loop;
   end Init_For_Loop;

end Example;

--  The invariant is required to handle larger loops!
