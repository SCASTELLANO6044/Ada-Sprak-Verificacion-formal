--  Swap example (Version 5): Our programmer noticed that
--  he really needs to swap unsigned_64 variables and found
--  a better implementation where no temporary is needed!

with Interfaces; use Interfaces;     -- To see Unsigned_64

package Example_V5 with SPARK_Mode is

   procedure Swap (X, Y : in out Unsigned_64) with
     Global  => null,
        --  reads and writes no global variables

     Depends => (X => (X, Y),
                 Y => (Y, X)),

        --  The final value of X depends on the initial
        --  value of X and the initial value of Y

        --  The final value of Y depends on the initial
        --  value of Y and the initial value of X

     Post    => X = Y'Old and Y = X'Old;
        --  The final value of X is the initial value
        --  of Y (and viceversa)

end Example_V5;
