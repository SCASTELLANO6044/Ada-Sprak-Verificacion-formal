package body Example
   with SPARK_Mode => On
is

   procedure Add (V : Integer; Max : Positive) is
   begin
      if V < Max then
         Resultado := Resultado + V;
      else
         Resultado := Resultado + 1;
      end if;
   end Add;

end Example;
