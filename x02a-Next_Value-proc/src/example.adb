
package body Example with SPARK_Mode => On is

   function Next_Value (X : Integer) return Integer is
   begin
      return X+1;
   end Next_Value;

   procedure Next_Value (X : in out Integer) is
   begin
      X:=X+1;
   end Next_Value;

end Example;
