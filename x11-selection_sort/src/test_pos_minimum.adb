with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Test_Pos_Minimum is

   procedure Test_1 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Put ("Test_1: Minimum at last position ............. ");
      pragma Assert (Pos_Minimum (Table) = 5);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table : constant T_Table (11 .. 15) := (-1, 4, 3, 2, 1);
   begin
      Put ("Test_2: Minimum at first position ............ ");
      pragma Assert (Pos_Minimum (Table) = 11);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table : constant T_Table (21 .. 25) := (-1, 4, -3, 2, 1);
   begin
      Put ("Test_3: Minimum at middle index .............. ");
      pragma Assert (Pos_Minimum (Table) = 23);
      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Testing Pos_Minimum");

   Test_1;
   Test_2;
   Test_3;
end Test_Pos_Minimum;
