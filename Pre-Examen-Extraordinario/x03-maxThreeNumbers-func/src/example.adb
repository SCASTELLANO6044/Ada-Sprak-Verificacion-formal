package body Example with SPARK_Mode is

   function Max (N1, N2, N3 : Integer) return Integer is
   begin
      if N1 > N2 then
         if N1 > N3 then
            return N1;
         else
            return N3;
         end if;
      else
         if N2 > N3 then
            return N2;
         else
            return N3;
         end if;
      end if;


   end Max;

end Example;
