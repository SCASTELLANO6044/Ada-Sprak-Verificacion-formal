with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Tests_Abs_Proc is

   procedure Test_1 is
      R : Natural;
   begin
      Put ("Test_1: testing POSITIVE value .................... ");

      Absolute_Value (10, R);
      pragma Assert (R = 10);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      R : Natural;
   begin
      Put ("Test_2: testing NEGATIVE value .................... ");

      Absolute_Value (-10, R);
      pragma Assert (R = 10);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      R : Natural;
   begin
      Put ("Test_3: testing the ZERO value .................... ");

      Absolute_Value (0, R);
      pragma Assert (R = 0);

      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Tests: Abs (procedure)");
   Test_1;
   Test_2;
   Test_3;
end Tests_Abs_Proc;
