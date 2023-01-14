package body Example_V2 with SPARK_Mode is

   procedure Swap (X, Y : in out Integer) is
   begin
      X := Y;
      Y := X;
   end Swap;

end Example_V2;
