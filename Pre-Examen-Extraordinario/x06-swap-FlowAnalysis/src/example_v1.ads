--  Swap example (Version 1): This initial version has errors
--  and we see how 'SPARK->Examine File' helps their early
--  detection!

package Example_V1 with SPARK_Mode is

   procedure Swap (X, Y : in out Integer);

end Example_V1;

--  The formal verifier reports us:
--     warning: unused initial value of "X"
