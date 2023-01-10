package body Abs_function with SPARK_Mode is

   function abs_value (n : Integer) return Integer is
      begin
         if n <= 0 then
            return -n;
         else
            return n;
         end if;
      end abs_value;

   end Abs_function;
