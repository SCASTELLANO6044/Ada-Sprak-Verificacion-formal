with Pkg_Subtract; use Pkg_Subtract;
with Pkg_Add; use Pkg_Add;
package body Pkg_Divide with SPARK_Mode is

   procedure Divide
     (Dividend  : Integer;
      Divisor   : Integer;
      Quotient  : out Integer;
      Remainder : out Integer) is
      aux: Integer:=0;
   begin
      Quotient := 0;
      Remainder := 0;

      if (abs(Dividend) >= abs(Divisor)) then
         if Divisor /= 0 then
            Remainder := abs(Dividend);
            while Remainder >= abs(Divisor) loop
               Subtract(Remainder, abs(Divisor), aux);
               Remainder := aux;
               Quotient := Add(Quotient, 1);
            end loop;
            if Dividend < 0 then
               Remainder := -Remainder;
            end if;
            if ((Dividend < 0 and Divisor > 0) or (Dividend > 0 and Divisor < 0)) then
               Quotient := -Quotient;
            end if;
         end if;
      end if;
      Last_Quotient := Quotient;
      Last_Remainder := Remainder;
   end Divide;

end Pkg_Divide;
