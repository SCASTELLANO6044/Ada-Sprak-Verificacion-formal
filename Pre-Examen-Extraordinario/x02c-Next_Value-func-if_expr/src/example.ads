package Example with
   SPARK_Mode
is

   --  Given X (a number in the range -100 .. 100) compute the next value
   --  as follows:
   --    - For positive values of X, return X - 1
   --    - For negative values of X, return X + 1

   function Next_Value (X : Integer) return Integer with
     Global => null,
     Depends => (Next_Value'Result => X),
     Pre => (X <= 0 and then X >= -100)
            or else
            (X >= 0 and then X <= 100),
       Post => (if X >= 0 then
                  Next_Value'Result = X - 1
                    else
                      Next_Value'Result = X + 1);

end Example;
