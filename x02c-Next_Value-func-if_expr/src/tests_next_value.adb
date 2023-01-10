
with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Tests_Next_Value is

   procedure Test_1 is
   begin
      Put ("Test 1: Next_Value (100) ................................ ");

      pragma Assert (Next_Value (100) = 99);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test 2: Next_Value (0) .................................. ");

      pragma Assert (Next_Value (0) = -1);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put ("Test 3: Next_Value (-1) ................................. ");

      pragma Assert (Next_Value (-1) = 0);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
   begin
      Put ("Test 4: Next_Value (-100) ............................... ");

      pragma Assert (Next_Value (-100) = -99);

      Put_Line ("OK");
   end Test_4;

begin
   Put_Line ("********************* Tests: Next_Value");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
end Tests_Next_Value;
