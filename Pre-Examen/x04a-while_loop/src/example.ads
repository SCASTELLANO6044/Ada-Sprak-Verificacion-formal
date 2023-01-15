package Example with SPARK_Mode is

   procedure While_Test (N : Natural; X : out Integer)
     with
       Global => null,
       Depends => (X => N),
       Pre => True,
       Post => X = (N/2)-1;

end Example;
