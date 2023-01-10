package Pkg_addTenXTimes with SPARK_Mode is

   N : Positive := 10;

   function addTenXTimes (X : Natural) return Positive
     -- Add 'N' to the number 10 X times.

     with
       Global => (Input => N),
       Depends => (addTenXTimes'Result => (X, N)),
       Pre => X < Natural'Last/N and then N = 10,
       Post => addTenXTimes'Result = N * X + 10;
end Pkg_addTenXTimes;
