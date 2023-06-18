package body Example with SPARK_Mode is

   procedure Increment (V : in out T_Vector; From : Natural;
                        To : Natural) is

   begin
      for i in From .. To - 2 loop
         if i mod  2 /= 0 then
            if i = From then
               V(i) := V(To);
            else
               V(i) := V(i + 2);
            end if;
         end if;

         pragma Loop_Invariant ((for all j in From .. i =>(
                                                          if j mod 2 /= 0 then
                                                             if j = From then
                                                                V(j) = V'Loop_Entry(To)
                                                             else
                                                             V(j) = V'Loop_Entry(j + 2)
                                                         ));
         pragma Loop_Invariant (for all k in i .. V'Last => V(k) = V'Loop_Entry(k));

      end loop;
   end Increment;

end Example;
