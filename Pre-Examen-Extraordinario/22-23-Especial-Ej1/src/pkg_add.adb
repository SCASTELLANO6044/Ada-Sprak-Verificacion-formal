package body Pkg_Add with SPARK_Mode is

   function Add
     (A : Natural;
      B : Natural;
      C : Natural;
      D : Natural) return Natural is
   begin
      return (A - C) / (D * B);
   end Add;

end Pkg_Add;
