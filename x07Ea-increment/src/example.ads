package Example
   with SPARK_Mode => On
is
   Total     : Integer := 0;

   procedure Increment (X : Integer) with
   --  Suma X al valor acumulado en Total, siendo X un numero positivo
     Global  =>  (In_Out => Total),
     Depends => (Total => (Total, X)),
     Pre     => X > 0
                  and then Total <= Integer'Last - X,
     Post    => Total = Total'Old + X;

end Example;
