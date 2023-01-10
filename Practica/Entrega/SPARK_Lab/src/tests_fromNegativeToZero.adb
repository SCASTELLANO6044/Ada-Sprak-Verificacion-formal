with Ada.Text_IO;   use Ada.Text_IO;
with Pkg_fromNegativeToZero;  use Pkg_fromNegativeToZero;

procedure Tests_fromNegativeToZero is

   procedure Test_1 is

      Vec : T_Vec (1 .. 5) := (-1, 2, -3, 4, -5);

   begin
      Put ("Test 1: [-1, 2, -3, 4, -5] ................. ");

      fromNegativeToZero(Vec);
      pragma Assert (Vec = (0, 2, 0, 4, 0));

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is

      Vec : T_Vec (1 .. 5) := (1, -2, 3, -4, 5);

   begin
      Put ("Test 2: [1, -2, 3, -4, 5] .................. ");

      fromNegativeToZero(Vec);
      pragma Assert (Vec = (1, 0, 3, 0, 5));

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is

      Vec : T_Vec (1 .. 2) := (1, 2);

   begin
      Put ("Test 3: [1, 2] ............................. ");

      fromNegativeToZero(Vec);
      pragma Assert (Vec = (1, 2));

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is

      Vec : T_Vec (1 .. 6) := (-8, -45, -3, -74, -100, -6);

   begin
      Put ("Test 4: [-8, -45, -3, -74, -100]  .......... ");

      fromNegativeToZero(Vec);
      pragma Assert (Vec = (0, 0, 0, 0, 0, 0));

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is

      Vec : T_Vec (1 .. 4) := (0, 4, -8, -15);

   begin
      Put ("Test 5: [0, 4, -8, -15, -25]  .............. ");

      fromNegativeToZero(Vec);
      pragma Assert (Vec = (0, 4, 0, 0));

      Put_Line ("OK");
   end Test_5;

begin
   Put_Line ("********************* Tests_fromNegativeToZero");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
end Tests_fromNegativeToZero;
