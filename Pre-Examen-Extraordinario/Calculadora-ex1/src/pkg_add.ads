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
       Pre => ((if A > 0 and B > 0 then
                     A <= Natural'Last - B
                       elsif A < 0 and B < 0 then
                         A >= Natural'First - B) and then
                 (if D > 0 and C > 0 then
                        D <= Natural'Last / C
                          elsif D > 0 and C < 0 then
                            C >= Natural'First / D
                              elsif D < 0 and C > 0 then
                                D >= Natural'First / C
                                  elsif D < 0 and C < 0 then
                                    D >= Natural'Last / C) and then
                   (A+B) /= 0 and then
                   (D*C)/(A+B) in 40 .. 130),
       Post => Add'Result = (D*C)/(A+B);

end Pkg_Add;
