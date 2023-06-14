package Example with
   SPARK_Mode
is

   function Max (N1, N2, N3 : Integer) return Integer with
     Global => null,
     Depends => (Max'Result => (N1, N2, N3)),
     Post =>
       (Max'Result >= N1
        and then Max'Result >= N2
        and then Max'Result >= N3)
     and then
       (Max'Result = N1
        or else Max'Result = N2
        or else Max'Result = N3);


end Example;
