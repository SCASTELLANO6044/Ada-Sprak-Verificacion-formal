package Pkg_Add with SPARK_Mode is

   function Add
     (A : Natural;
      B : Natural;
      C : Natural;
      D : Natural) return Natural
   --  Compute the addition of First_Operand plus Second_Operand
   with
       Global => null,
       Depends => (Add'Result => (A, B, C, D)),
       Pre => ((if D > 0 and B > 0 then
                     D <= Natural'Last - B
                       elsif D < 0 and B < 0 then
                         D >= Natural'First - B)and then
                 C /= 0 and then
                   (A / C) in Natural'Range and then
                 (if (A/C) > 0 and (D+B) > 0 then
                    (A/C) <= 150 / (D+B)
                      elsif (A/C) > 0 and (D+B) < 0 then
                    (D+B) >= 30 / (A/C)
                      elsif (A/C) < 0 and (D+B) > 0 then
                    (A/C) >= 30 / (D+B)
                      elsif (A/C) < 0 and (D+B) < 0 then
                    (A/C) >= 150 / (D+B))),
       Post => Add'Result = (A /  C) * (D + B);

end Pkg_Add;
