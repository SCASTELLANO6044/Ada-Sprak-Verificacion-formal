package Pkg_Subtract with
   SPARK_Mode
is

   procedure Subtract
     (First_Operand :     Integer; Second_Operand : Integer;
      Result        : out Integer)
      --  Using the function 'Add', compute the subtraction of First_Operand
      --  minus Second_Operand
     with
       Global => null,
       Depends => (Result => (First_Operand, Second_Operand)),
       Pre =>
         (if First_Operand <= 0 and Second_Operand >= 0 then
         First_Operand >= Integer'First + Second_Operand
       elsif First_Operand >= 0 and Second_Operand <= 0 then
         First_Operand <= Integer'Last + Second_Operand),
       Post => Result = First_Operand - Second_Operand;

end Pkg_Subtract;

--  Global  => null,
      --  Depends => (Result => (First_Operand, Second_Operand)),
      --  Pre     =>
      --  (if First_Operand <= 0 and Second_Operand >= 0 then
      --     First_Operand >= Integer'First + Second_Operand
      --   elsif First_Operand >= 0 and Second_Operand <= 0 then
      --     First_Operand <= Integer'Last + Second_Operand),
      --  Post => Result = First_Operand - Second_Operand;
