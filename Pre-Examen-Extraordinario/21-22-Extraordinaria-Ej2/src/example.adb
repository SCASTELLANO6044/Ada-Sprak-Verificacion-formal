package body Example with SPARK_Mode is

   procedure Increment (V1 : in out T_Vector; V2: T_Vector;
                        From : Natural; To : Natural) is
   i : Natural := From;
   begin
      while i <= To loop
         V1(i) := V1(i) + V2(i);
         pragma Loop_Invariant(for all j in From .. i =>
                                 V1(j) = V1'Loop_Entry(j) + V2(j));

         pragma Loop_Invariant (for all j in i + 1  .. to => V1(j) = V1'Loop_Entry(j));
         pragma Loop_Invariant(i in From .. To);
         pragma Loop_Variant(increases => i);
         i := i + 1;
      end loop;
   end Increment;

end Example;
