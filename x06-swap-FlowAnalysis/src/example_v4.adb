package body Example_V4 with SPARK_Mode is

   procedure Swap (X, Y : in out Integer) is
      Tmp : constant Integer := X;
   begin
      X := Y;
      Y := Tmp;
   end Swap;

end Example_V4;

