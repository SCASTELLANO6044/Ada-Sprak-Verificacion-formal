package body Pkg_Median with SPARK_Mode is

   procedure Median (Vec : T_Vec; Res : out Integer) is
   begin

      if Vec'Length = 1 then
         Res := Vec(Vec'First);
      else
         Res := Vec((Vec'Length/2));
      end if;

   end Median;

end Pkg_Median;
