package body Example with SPARK_Mode is

   procedure Init_For_Loop (V : out T_Vector; Value : Integer) is
   begin
      V := (others => 0);
      for i in V'Range loop
         V(i) := Value;
         pragma Loop_Invariant(for all J in V'First .. i =>
                                 V(J) = Value);
         pragma Loop_Invariant(for all K in i+1 .. V'Last =>
                              V(K) = 0);
      end loop;
   end Init_For_Loop;

end Example;

--  The invariant is required to handle larger loops!
