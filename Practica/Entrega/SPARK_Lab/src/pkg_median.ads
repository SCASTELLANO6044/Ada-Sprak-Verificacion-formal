package Pkg_Median with SPARK_Mode is

   type T_Vec is array (Positive range <>) of Integer;

   procedure Median (Vec : T_Vec; Res : out Integer)
     -- Find the median of a given vector and store the result in 'Res'.

     with
       Global => null,
       Depends => (Res => Vec),
       Pre => Vec'Length > 0 and then Vec'First = 1 and then Vec'Last = Vec'Length,
       Contract_Cases => ((Vec'Length = 1) => Res = Vec(1),
                         (Vec'Length > 1) => Res = Vec((Vec'Length/2)));

end Pkg_Median;
