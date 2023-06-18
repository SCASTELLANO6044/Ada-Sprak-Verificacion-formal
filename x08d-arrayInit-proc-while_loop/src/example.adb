package body Example with SPARK_Mode is

   procedure Init_While_Loop
     (Table : in out T_Table;
      Value : Integer := 0)
   is
      J : Natural := Table'First;
   begin
      while J <= Table'Last loop
         Table (J) := Value;

         pragma Loop_Variant (Increases => J);

         pragma Loop_Invariant (J in Table'Range);
         pragma Loop_Invariant
           (for all K in Table'First .. J =>
              Table (K) = Value);
         pragma Loop_Invariant
           (if J < Table'Last then
               (for all K in J + 1 .. Table'Last =>
                    Table (K) = Table'Loop_Entry (K)));

         J := J + 1;
      end loop;

   end Init_While_Loop;

end Example;
