package Example with SPARK_Mode is

   --  Given X (a number in the range -100 .. 100) compute the next value
   --  as follows:
   --    - For positive values of X, return X - 1
   --    - For negative values of X, return X + 1

   function Next_Value (X : Integer) return Integer
     with 
       Global  => null,
       Depends => (Next_Value'Result => X),
       Pre     => X in - 100 .. 100,
       Contract_Cases =>
         ((X in 0 .. 100)   => Next_Value'Result = X - 1,
          (X in -100 .. -1) => Next_Value'Result = X + 1);

end Example;
