package body Pkg_Subtract with SPARK_Mode is

   procedure Subtract
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer) is
   begin
      Result := First_Operand-Second_Operand;
   end Subtract;

end Pkg_Subtract;
