package body Example with SPARK_Mode is

   procedure AndLogic (V1 : in out T_Vector; V2: T_Vector;
                        From : Natural; To : Natural) is
   i : Natural := From;
   begin
      while i <= To loop
         if V1(i) = 0 and V2(i) = 0 then
            V1(i) := 0;
         elsif V1(i) = 0 and V2(i) = 1 then
            V1(i) := 0;
         elsif V1(i) = 1 and V2(i) = 0 then
            V1(i) := 0;
         elsif V1(i) = 1 and V2(i) = 1 then
            V1(i) := 1;
         end if;
         pragma Loop_Invariant(for all j in From .. i =>
                                 (if V1'Loop_Entry(j) = 0 and V2(j) = 0 then
                                       V1(j) = 0
                                  elsif V1'Loop_Entry(j) = 0 and V2(j) = 1 then
                                       V1(j) = 0
                                  elsif V1'Loop_Entry(j) = 1 and V2(j) = 0 then
                                       V1(j) = 0
                                  elsif V1'Loop_Entry(j) = 1 and V2(j) = 1 then
                                       V1(j) = 1));
         pragma Loop_Invariant (for all j in i .. to => V1'Loop_Entry(j) = V1(j));
         pragma Loop_Invariant(i in From .. To);
         pragma Loop_Variant(increases => i);
         i := i + 1;
      end loop;
   end AndLogic;

end Example;
