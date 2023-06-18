with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Tests is

   procedure Test_1 is
   begin
      Put ("Test 1: ................................");

      Example.Resultado := 10;
      Add (5, 10);

      pragma Assert (Example.Resultado = 15);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test 2: ................................");

      Example.Resultado := 10;
      Add (12, 10);

      pragma Assert (Example.Resultado = 11);

      Put_Line ("OK");
   end Test_2;

begin
   Put_Line ("********************* Tests: Add");
   Test_1;
   Test_2;
end Tests;
