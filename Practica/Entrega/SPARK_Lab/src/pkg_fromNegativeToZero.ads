package Pkg_fromNegativeToZero with SPARK_Mode is

   type T_Vec is array (Positive range <>) of Integer;

   zero : Natural := 0;

   procedure fromNegativeToZero (Vec : in out T_Vec)
     -- Replace the negative numbers of the array passed by parameter with 'zero'.

     with
       Global  => (input => zero),
       Depends => (Vec => (Vec, zero)),
       Pre     => Vec'Length > 0 and then Vec'First = 1 and then Vec'Last < Positive'Last,
       Post    => (for some i in Vec'Range => Vec(i) in 0 .. Integer'Last);


end Pkg_fromNegativeToZero;
