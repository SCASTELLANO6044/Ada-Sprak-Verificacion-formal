package Example with SPARK_Mode is

   type T_Matrix is array (Positive range <>,
                           Positive range <>) of Integer;

   function Max (Matrix : T_Matrix) return Integer
     with
       Global => null,
       Depends => (Max'Result => Matrix),
       Pre => Matrix'Length > 0,
       Post => (for all i in Matrix'Range => Max'Result >= Matrix(i));

end;







































--  Global  => null,
--         Depends => (Max'Result => Matrix),
--         Pre     => Matrix'Length (1) > 0
--                      and then Matrix'Length (2) > 0,
--         Post    => (for all J in Matrix'Range (1) =>
--                       (for all K in Matrix'Range (2) =>
--                            Max'Result >= Matrix (J, K)))
--                   and then
--                     (for some J in Matrix'Range (1) =>
--                        (for some K in Matrix'Range (2) =>
--                             Max'Result = Matrix (J, K)));
