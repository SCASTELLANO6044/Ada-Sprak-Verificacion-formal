with Ada.Text_IO;  use Ada.Text_IO;
with Example;      use Example;

procedure Main is

   procedure Test_1 is
      Result : constant T_Table := (others => 2);
      Table  : T_Table := (others => 1);
   begin
      Put ("Test_1: testing the ZERO value ....... ");
      Increment (Table);
      pragma Assert (Table = Result);
      Put_Line ("OK");
   exception
      when others =>
         Put_Line ("*** Failed (exception)");
   end Test_1;

begin
   Put_Line ("********************* Testing Array Increment");
   Test_1;
end Main;
