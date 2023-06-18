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
       Pre => ((if A > 0 and C < 0 then
                     A <= Natural'Last + C
                       elsif A < 0 and C > 0 then
                         A >= Natural'First + C) and then
                 (if D > 0 and B > 0 then
                        D <= Natural'Last / B
                          elsif D > 0 and B < 0 then
                            B >= Natural'First / D
                              elsif D < 0 and B > 0 then
                                D >= Natural'First / B
                                  elsif D < 0 and B < 0 then
                                    D >= Natural'Last / B)and then
                   (D * B) /= 0   and then
                 (A-C)/(D*B) in 35 .. 175),
       Post => Add'Result = (A - C) / (D * B);

end Pkg_Add;
