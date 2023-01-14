package body Example_V5 with SPARK_Mode is

   --  https://en.wikipedia.org/wiki/XOR_swap_algorithm

   procedure Swap (X, Y : in out Unsigned_64) is
   begin
      X := X xor Y;
      Y := X xor Y;
      X := X xor Y;
   end Swap;

end Example_V5;

