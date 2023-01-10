with Ada.Text_IO;       use Ada.Text_IO;
with Pkg_substractTenAddTen;        use Pkg_substractTenAddTen;

procedure Tests_substractTenAddTen is

   procedure Test_1 is
      Vec : T_Vec (1 .. 5) := (2, 5, 15, 1, 3);
   begin
      Put ("Test 1: [2, 5, 15, 1, 3] ................... ");

      substractTenAddTen(Vec);
      pragma Assert (Vec = (-8, -5, 25, 11, 13));

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Vec : T_Vec (1 .. 5) := (-2, 8, 0, 2, 3);
   begin
      Put ("Test 2: [-2, 8, 0, 2, 3] ................... ");

      substractTenAddTen(Vec);
      pragma Assert (Vec = (-12, -2, 10, 12, 13));

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Vec : T_Vec (1 .. 5) := (45, 17, -150, -300, -25);
   begin
      Put ("Test 3: [45, 17, -150, -300, -25] .......... ");

      substractTenAddTen(Vec);
      pragma Assert (Vec = (35, 7, -140, -290, -15));

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Vec : T_Vec (1 .. 6) := (10, 20, 30, 40, 50, 60);
   begin
      Put ("Test 4: [10, 20, 30, 40, 50, 60] ........... ");

      substractTenAddTen(Vec);
      pragma Assert (Vec = (0, 10, 20, 50, 60, 70));

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Vec : T_Vec (1 .. 2) := (10, -10);
   begin
      Put ("Test 5: [10, -10] .......................... ");

      substractTenAddTen(Vec);
      pragma Assert (Vec = (0, 0));

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Vec : T_Vec (1 .. 4) := (87, -88, 89, -90);
   begin
      Put ("Test 6: [87, -88, 89, -90] ................. ");

      substractTenAddTen(Vec);
      pragma Assert (Vec = (77, -98, 99, -80));

      Put_Line ("OK");
   end Test_6;


begin
   Put_Line ("********************* Tests_substractTenAddTen");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
end Tests_substractTenAddTen;
