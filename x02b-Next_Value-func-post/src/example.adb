package body Example with SPARK_Mode is

   function Next_Value (X : Integer) return Integer is
   begin
      return X + 1;
   end Next_Value;

   function Call_Next_Value return Boolean is
      A : constant Integer := 3;
      B : constant Integer := Next_Value (A);
      C : constant Integer := Next_Value (B);
      D : constant Integer := Next_Value (C);
   begin
      pragma Unreferenced (D);
      --  Aviso al compilador que por ahora no voy a referenciar 
      --  esta variable
      return True;
   end Call_Next_Value;

end Example;
