--  Swap example (Version 4): The programmer fixes his contract.

package Example_V4 with SPARK_Mode is

   procedure Swap (X, Y : in out Integer) with
      Global  => null,
        --  reads and writes no global variables

      Depends => (X => Y, Y => X),
        --  The final value of X depends on the initial
        --  value of Y (and viceversa)

      Post    => X = Y'Old and then Y = X'Old;
        --  The final value of X is the initial value
        --  of Y (and viceversa)

end Example_V4;
