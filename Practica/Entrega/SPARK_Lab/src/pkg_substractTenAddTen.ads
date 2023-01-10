package Pkg_substractTenAddTen with SPARK_Mode is

   type T_Vec is array (Positive range <>) of Integer;

   procedure substractTenAddTen (Vec : in out T_Vec)
     -- Subtract 10 from the elements of the first half of a given array.
     -- Then add 10 to the other half.

     with
       Global  => null,
       Depends => (Vec => Vec),

       Pre => Vec'Length > 0 and then Vec'First = 1 and then Vec'Last < Positive'Last
              and then
              (if Vec'Length = 1 then
                 Vec(1) >= Integer'First + 10
               else
               (for all i in 1 .. Vec'Length/2 =>
                  (if Vec(i) < 0 then
                     Vec(i) >= Integer'First + 10))
                and then
                (for all j in (Vec'Length/2) + 1 .. Vec'Last =>
                   (if Vec(j) > 0 then
                      Vec(j) <= Integer'Last - 10))),

       Post => (if Vec'Length = 1 then
                  Vec(1) = Vec'Old(1) - 10
                else
                  (for all i in 1 .. Vec'Length/2 =>
                     Vec(i) = Vec'Old(i) - 10)
                  and then
                  (for all j in (Vec'Length/2) + 1 .. Vec'Last =>
                     Vec(j) = Vec'Old(j) + 10));

end Pkg_substractTenAddTen;
