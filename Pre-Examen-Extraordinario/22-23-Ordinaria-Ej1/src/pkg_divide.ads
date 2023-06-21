package Pkg_Divide with SPARK_Mode is
   Last_Quotient  : Integer;
   Last_Remainder : Integer;

   procedure Divide
     (Dividend  : Integer;
      Divisor   : Integer;
      Quotient  : out Integer;
      Remainder : out Integer)
   --  Using the function 'Add' (or the procedure 'Subtract') and a
   --  while-loop-statement, compute the division of First_Operand
   --  by Second_Operand and store the resulting Quotient and
   --  Remainder in the global variables Last_Quotient and
   --  Last_Remainder.
   with
--      Global  => ...
--      Depends => ...
        Pre     => True,
        Post    => True;

end Pkg_Divide;
