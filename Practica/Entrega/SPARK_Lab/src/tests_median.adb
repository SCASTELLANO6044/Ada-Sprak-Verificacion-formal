with Ada.Text_IO;  use Ada.Text_IO;
with Pkg_Median; use Pkg_Median;

procedure Tests_Median is

   procedure Test_1 is
      Result : Integer;
      Vec : constant T_Vec (1 .. 5) := (1, 2, 3, 4, 5);
   begin
      Put ("Test 1: [1, 2, 3, 4, 5] .................... ");

      Median(Vec, Result);
      pragma Assert (Result = 2);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Result : Integer;
      Vec : constant T_Vec (1 .. 6) := (3, 5, 2, 0, 6, 7);
   begin
      Put ("Test 2: [3, 5, 2, 0, 6, 7] ................. ");

      Median(Vec, Result);
      pragma Assert (Result = 2);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Result : Integer;
      Vec : constant T_Vec (1 .. 5) := (0, -8, -12, 2, 3);
   begin
      Put ("Test 3: [0, 8, -12, 2, 3] .................. ");

      Median(Vec, Result);
      pragma Assert (Result = -8);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Result : Integer;
      Vec : constant T_Vec (1 .. 6) := (2, 9, -1, -5, 2, -7);
   begin
      Put ("Test 4: [2, 9, -1, -5, 2, -7] .............. ");

      Median(Vec, Result);
      pragma Assert (Result = -1);

      Put_Line ("OK");
   end Test_4;

begin
   Put_Line ("********************* Tests_Median");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
end Tests_Median;
