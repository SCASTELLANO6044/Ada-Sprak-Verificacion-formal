package body Example with SPARK_Mode is

   function Max (Matrix : T_Matrix) return Integer is
      Max : Integer := Matrix (Matrix'First(1), Matrix'First (2);

   begin
   end Max;

end Example;










































--  for Row in Matrix'Range (1) loop
--           declare
--              MaxVector : Integer := Matrix (Row, Matrix'First (2));
--           begin
--              for Column in Matrix'Range (2) loop
--                 if Matrix (Row, Column) > MaxVector then
--                    MaxVector := Matrix (Row, Column);
--                 end if;
--
--                 pragma Loop_Invariant
--                   (for all K in Matrix'First (2) .. Column =>
--                        MaxVector >= Matrix (Row, K));
--
--                 pragma Loop_Invariant
--                   (for some K in Matrix'First (2) .. Column =>
--                        MaxVector = Matrix (Row, K));
--              end loop;
--
--              if MaxVector > Max then
--                 Max := MaxVector;
--              end if;
--           end;
--
--           pragma Loop_Invariant
--             (for all J in Matrix'First (1) .. Row =>
--                  (for all K in Matrix'Range (2) =>
--                         Max >= Matrix (J, K)));
--
--           pragma Loop_Invariant
--             (for some J in Matrix'First (1) .. Row =>
--                (for some K in Matrix'Range (2) =>
--                     Max = Matrix (J, K)));
--
--        end loop;
--
--        return Max;
