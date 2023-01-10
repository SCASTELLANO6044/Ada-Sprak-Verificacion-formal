with Ada.Text_IO;  use Ada.Text_IO;
with Example;      use Example;

procedure Test_Example is

   procedure Test_1 is
      X : Integer := 0;
   begin
      Put ("Test: increment from 0 to 10 ................. ");
      Increment (X, 10);
      pragma Assert (X = 10);
      Put_Line ("OK");
   end Test_1;

begin
   Put_Line ("********************* Test_Increment");
   Test_1;
end Test_Example;
