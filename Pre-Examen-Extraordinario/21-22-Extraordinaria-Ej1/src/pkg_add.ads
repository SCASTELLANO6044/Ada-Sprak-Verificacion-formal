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
                     D <= Natural'Last - B)and then
                 C /= 0 and then
                   (A / C) in Natural'Range and then
                 (if (A/C) > 0 and (D+B) > 0 then
                    (A/C) <= Natural'Last / (D+B))and then
              (A/C)*(D+B) in 30 .. 150),
       Post => Add'Result = (A /  C) * (D + B) and then Add'Result in 30 .. 150;

end Pkg_Add;
