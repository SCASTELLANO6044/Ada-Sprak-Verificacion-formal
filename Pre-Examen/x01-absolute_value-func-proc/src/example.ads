package Example with SPARK_Mode is

   function Absolute_Value (X : Integer) return Natural
     with
       Pre => X > Integer'First,
       Post => Absolute_Value'Result = abs(X);


   procedure Absolute_Value (X : Integer; R : out Natural)
     with
       Pre => X > Integer'First,
       Post => R = abs(X);


end Example;
