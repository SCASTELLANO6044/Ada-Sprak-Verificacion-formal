package Abs_function with SPARK_Mode is

   function abs_value (n : in Integer) return Integer
     with

       Pre => True,
       Post => abs_value'Value = abs(n);


end Abs_function;
