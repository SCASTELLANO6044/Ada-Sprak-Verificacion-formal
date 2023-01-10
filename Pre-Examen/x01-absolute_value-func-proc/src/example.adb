package body Example with SPARK_Mode is

   function Absolute_Value (X : Integer) return Natural is
   begin
      if X < 0 then
         return -X;
      else
         return X;
      end if;
   end Absolute_Value;

   procedure Absolute_Value (X : Integer; R : out Natural) is
   begin
      if X < 0 then
         R := -X;
      else
         R := X;
      end if;
   end Absolute_Value;

end Example;
