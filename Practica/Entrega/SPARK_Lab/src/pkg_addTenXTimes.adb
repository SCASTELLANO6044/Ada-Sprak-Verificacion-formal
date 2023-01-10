package body Pkg_addTenXTimes with SPARK_Mode is

   function addTenXTimes (X : Natural) return Positive is

      Res : Positive;

   begin
      if X = 0 then
         return N;
      end if;

      Res := N;
      for i in 1 .. X loop
         Res := Res + N;
         pragma Loop_Invariant(Res = Res'Loop_Entry * i + N);
      end loop;

      return Res;
   end addTenXTimes;

end Pkg_addTenXTimes;
