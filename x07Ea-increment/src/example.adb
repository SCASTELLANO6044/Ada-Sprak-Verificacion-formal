package body Example
   with SPARK_Mode => On
is

   procedure Increment (X : Integer) is
   begin
      Total := Total + X;
   end Increment;

end Example;
