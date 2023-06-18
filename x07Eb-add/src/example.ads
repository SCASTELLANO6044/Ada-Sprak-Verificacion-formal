package Example
   with SPARK_Mode => On
is
   Resultado : Integer := 0;

   procedure Add (V : Integer; Max : Positive) with
   --  Cuando el valor de V, que es un numero positivo, es menor que
   --  Max suma V al valor acumulado en Resultado; en caso contrario
   --  suma 1 a Resultado.

     Global  => (In_Out => Resultado),
     Depends => (Resultado => (Resultado, V, Max)),
     Pre     => V > 0
                  and then Resultado <= Integer'Last - V,
     Post =>
       (if V < Max then
          Resultado = Resultado'Old + V
        else
          Resultado = Resultado'Old + 1);

end Example;
