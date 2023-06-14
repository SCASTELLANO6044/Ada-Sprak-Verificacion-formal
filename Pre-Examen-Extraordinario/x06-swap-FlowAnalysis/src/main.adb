with Example_V1;
with Example_V2;
with Example_V3;
with Example_V4;
with Example_V5;
with Interfaces; use Interfaces;

procedure Main is
   A : Integer := 1;
   B : Integer := 2;

   X : Unsigned_64 := 1;
   Y : Unsigned_64 := 2;
begin
   Example_V1.Swap (A, B);
   Example_V2.Swap (A, B);
   Example_V3.Swap (A, B);
   Example_V4.Swap (A, B);
   Example_V5.Swap (X, Y);
end Main;
