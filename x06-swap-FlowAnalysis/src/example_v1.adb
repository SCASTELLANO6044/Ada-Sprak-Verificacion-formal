package body Example_V1
   with SPARK_Mode => On
is

   procedure Swap (X, Y : in out Integer) is
   begin
      X := Y;
      Y := X;
   end Swap;

end Example_V1;

--  As this procedure does not have a contract yet,
--  GNATprove only checks that there are no possible
--  reads of uninitialized data and no possible
--  run-time errors in the procedure. It simply
--  issues a warning.
