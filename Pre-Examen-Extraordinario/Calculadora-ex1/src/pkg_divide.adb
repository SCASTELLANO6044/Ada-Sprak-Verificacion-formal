package body Pkg_Divide with SPARK_Mode is

   procedure Divide
     (Dividend  : Integer;
      Divisor   : Integer;
      Quotient  : out Integer;
      Remainder : out Integer) is
   begin
      Quotient := 0;
      Remainder := 0;
   end Divide;

end Pkg_Divide;
