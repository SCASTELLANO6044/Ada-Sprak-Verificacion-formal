
with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Tests_Next_Value is

   procedure Test_1 is
   begin
      Put ("Test 1: Next_Value (100) ................................ ");

      pragma Assert (Next_Value (100) = 101);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test 2: Next_Value (0) .................................. ");

      pragma Assert (Next_Value (0) = 1);

      Put_Line ("OK");
   end Test_2;

begin
   Put_Line ("********************* Tests: Next_Value");
   Test_1;
   Test_2;
end Tests_Next_Value;
