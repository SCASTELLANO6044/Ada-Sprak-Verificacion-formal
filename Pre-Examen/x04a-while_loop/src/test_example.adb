with Ada.Text_IO;   use Ada.Text_IO;
with Example;       use Example;

procedure Test_Example is

   procedure Test_1 is
      X : Integer;
   begin
      Put ("Test: loop 0 to 10 ..................... ");
      While_Test (10, X);
      pragma Assert (X = 4);
      Put_Line ("OK");
   end Test_1;

begin
   Put_Line ("********************* Testing While_Test");
   Test_1;
end Test_Example;
