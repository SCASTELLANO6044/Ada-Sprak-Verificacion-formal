package body Pkg_fromNegativeToZero with SPARK_Mode is

   procedure fromNegativeToZero (Vec : in out T_Vec) is

      i : Positive := 1;

   begin

      while i <= Vec'Last loop
         if Vec(i) < 0 then
            Vec(i) := zero;
         end if;

         pragma Loop_Invariant(i in 1 .. Vec'Last);
         pragma Loop_Variant(Increases => i);
         pragma Loop_Invariant(if Vec(i) < 0 then
                                  Vec(i) = zero);

         i := i + 1;
      end loop;
   end fromNegativeToZero;

end Pkg_fromNegativeToZero;
