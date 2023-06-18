package Example with SPARK_Mode is

   type T_Vector is array (Natural range <>) of Integer;
      
   E : Integer;
   
   procedure Extended_Rotate_Left (V : in out T_Vector) with
     Global => (In_Out => E),
     Depends => (V => (V, E),
                 E => V),
     Pre  => V'Length > 0,
     Post =>       
       E = V'Old (V'First)
     and then
       V (V'Last) = E'Old
     and then
       (for all J in V'Range =>
          (if J < V'Last then
                 V (J) = V'Old (J+1)));
   
-- Ejemplo:
-- Si E = 10 y V = [20, 30, 40, 50]
-- el resultado es:
-- E = 20 y V = [30, 40, 50, 10]

end Example;
