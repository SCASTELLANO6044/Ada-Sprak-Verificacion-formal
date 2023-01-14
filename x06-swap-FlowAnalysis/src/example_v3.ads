--  Swap example (Version 3): The programmer tries fixing
--  his code adding temporaries to the subprogram body but
--  does it wrong!

package Example_V3 with SPARK_Mode is

   procedure Swap (X, Y : in out Integer) with
      Depends => (X => Y, Y => X),
      Post => X = Y'Old and then Y = X'Old;

end Example_V3;
