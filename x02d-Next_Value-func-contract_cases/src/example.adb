package body Example with SPARK_Mode is

   function Next_Value (X : Integer) return Integer is
   begin
      if X >= 0 then
         return X - 1;
      else
         return X + 1;
      end if;
   end Next_Value;

end Example;
