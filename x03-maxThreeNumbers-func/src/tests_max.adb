with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Tests_Max is

   procedure Test_1 is
   begin
      Put ("Test 1: Max (10, 3, 1)............................");

      pragma Assert (Max (10, 3, 1) = 10);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test 2: Max (3, 10, 1)............................");

      pragma Assert (Max (3, 10, 1) = 10);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put ("Test 3: Max (3, 1, 10)............................");

      pragma Assert (Max (3, 1, 10) = 10);

      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Tests_MaxThreeNumbers");
   Test_1;
   Test_2;
   Test_3;
end Tests_Max;
