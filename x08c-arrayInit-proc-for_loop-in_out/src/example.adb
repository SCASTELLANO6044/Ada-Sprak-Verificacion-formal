
package body Example with SPARK_Mode is

   procedure Init_For_Loop
     (Table : in out T_Table;
      Value : Integer := 0)
   is
   begin
      for J in Table'Range loop
         Table (J) := Value;

         pragma Loop_Invariant
           (for all K in Table'First .. J =>
              Table (K) = Value);
         pragma Loop_Invariant
           (if J < Table'Last then
              (for all K in J + 1 .. Table'Last =>
                   Table (K) = Table'Loop_Entry (K)));
      end loop;
   end Init_For_Loop;

end Example;
