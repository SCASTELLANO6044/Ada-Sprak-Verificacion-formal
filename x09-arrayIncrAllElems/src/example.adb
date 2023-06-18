package body Example with SPARK_Mode is

   procedure Increment (Table : in out T_Table) is
   begin
      for i in Table'Range loop
         Table(i) := Table(i) + 1;
         pragma Loop_Invariant(for all j in Table'First .. i => Table(j) = Table'Loop_Entry(j) + 1);
         pragma Loop_Invariant(for all k in i + 1 .. Table'Last => Table(k) = Table'Loop_Entry(k));
      end loop;
   end Increment;

end Example;
