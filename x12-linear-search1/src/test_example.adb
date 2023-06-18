with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Test_Example is

   procedure Test_1 is
      Table : constant T_Table := (2, -10, 5, 3, 4, 7);
   begin
      Put ("Test_1: searching for the first element ............... ");
      pragma Assert (Search (Table, 2) = 1);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table : constant T_Table := (1, -10, 5, 3, 4, 7);
   begin
      Put ("Test_2: searching for the last element ................ ");
      pragma Assert (Search (Table, 7) = 6);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table : constant T_Table := (1, -10, 5, 3, 4, 7);
   begin
      Put ("Test_3: searching for other element ................... ");
      pragma Assert (Search (Table, 5) = 3);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Table : constant T_Table := (1, -10, 5, 3, 4, 7);
   begin
      Put ("Test_4: searching for non-existent element ............ ");
      pragma Assert (Search (Table, 9) = Not_Found);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Table : T_Table (2 .. 1);
   begin
      Put ("Test_5: searching on an empty table ................... ");
      pragma Assert (Search (Table, 9) = Not_Found);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Table : constant T_Table := (1, -10, 5, 3, 4, 5, 7);
   begin
      Put ("Test_6: searching for other element ................... ");
      pragma Assert (Search (Table, 5) = 6);
      Put_Line ("OK");
   end Test_6;

begin
   Put_Line ("********************* Testing Linear Search");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
end Test_Example;
