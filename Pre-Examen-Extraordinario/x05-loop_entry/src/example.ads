package Example with
   SPARK_Mode
is

   --  Increments X the value given by N

   procedure Increment (X : in out Natural; N : Natural) with
     Global=> null,
     Depends => (X => (X, N)),
     Pre => X <= Natural'Last - N,
     Post => X = X'Old + N;
   end Example;
