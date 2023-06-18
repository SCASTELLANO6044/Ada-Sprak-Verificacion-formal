with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Tests is

   procedure Test_1 is
   begin
      Put ("Test 1: ................................");

      Example.Total := 10;
      Increment (2);

      pragma Assert (Example.Total = 12);

      Put_Line ("OK");
   end Test_1;

begin
   Put_Line ("********************* Tests: Increment");
   Test_1;
end Tests;
