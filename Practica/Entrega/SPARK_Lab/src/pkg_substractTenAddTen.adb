package body Pkg_substractTenAddTen with SPARK_Mode is

   procedure substractTenAddTen (Vec : in out T_Vec) is

   begin

      if Vec'Length = 1 then
         Vec(1) := Vec(1) - 10;
      else

         for i in 1 .. Vec'Length/2 loop
            Vec(i) := Vec(i) - 10;
            pragma Loop_Invariant(for all j in 1 .. i =>
                                    Vec(j) = Vec'Loop_Entry(j) - 10);
         end loop;

         for j in (Vec'Length/2) + 1 .. Vec'Last loop
            Vec(j) := Vec(j) + 10;
            pragma Loop_Invariant(for all k in (Vec'Length/2) + 1 .. j =>
                                    Vec(k) = Vec'Loop_Entry(k) + 10);
         end loop;
      end if;

   end substractTenAddTen;

end Pkg_substractTenAddTen;
