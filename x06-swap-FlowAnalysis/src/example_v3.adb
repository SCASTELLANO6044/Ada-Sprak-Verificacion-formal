package body Example_V3 with SPARK_Mode is

   procedure Swap (X, Y : in out Integer) is
      Tmp_X : Integer;
      Tmp_Y : Integer;
   begin
      Tmp_X := X;
      X := Tmp_Y;
      Tmp_Y := Y;
      Y := Tmp_X;
   end Swap;

end Example_V3;

--  The flow analysis issues warnings whenever it
--  detects that some variables or statements are
--  not used in the computation, which is likely
--  uncovering an error.

