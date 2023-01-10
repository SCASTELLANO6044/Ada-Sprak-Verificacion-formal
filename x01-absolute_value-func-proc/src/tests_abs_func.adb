with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Tests_Abs_Func is

   procedure Test_1 is
   begin
      Put ("Test_1: testing POSITIVE value .................... ");
      pragma Assert (Absolute_Value (10) = 10);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test_2: testing NEGATIVE value .................... ");
      pragma Assert (Absolute_Value (-10) = 10);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put ("Test_3: testing the ZERO value .................... ");
      pragma Assert (Absolute_Value (0) = 0);
      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Tests: Abs (function)");
   Test_1;
   Test_2;
   Test_3;
end;
