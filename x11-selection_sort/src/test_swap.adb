with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Test_Swap is

   procedure Test_1 is
      Table  :          T_Table (1 .. 5) := (5, 4, 3, 2, 1);
      Result : constant T_Table (1 .. 5) := (1, 4, 3, 2, 5);
   begin
      Put ("Test_1: swap ................................. ");
      Swap (Table, 1, 5);
      pragma Assert (Table = Result);
      Put_Line ("OK");
   end Test_1;

begin
   Put_Line ("********************* Testing Swap");
   Test_1;
end Test_Swap;
