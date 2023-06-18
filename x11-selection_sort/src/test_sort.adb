with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Test_Sort is

   procedure Test_1 is
      Table  :          T_Table (1 .. 5) := (6, 4, 2, 10, 8);
      Result : constant T_Table (1 .. 5) := (2, 4, 6, 8, 10);
   begin
      Put ("Test_1: Selection sort ....................... ");
      Selection_Sort (Table);
      pragma Assert (Table = Result);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table  :          T_Table (1 .. 5) := (2, 4, 6, 8, 10);
      Result : constant T_Table (1 .. 5) := (2, 4, 6, 8, 10);
   begin
      Put ("Test_2: Selection sort (ordered) ............. ");
      Selection_Sort (Table);
      pragma Assert (Table = Result);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table  :          T_Table (1 .. 5) := (10, 8, 6, 4, 2);
      Result : constant T_Table (1 .. 5) := (2, 4, 6, 8, 10);
   begin
      Put ("Test_3: Selection sort (reversed) ............ ");
      Selection_Sort (Table);
      pragma Assert (Table = Result);
      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Testing Selection_Sort");

   Test_1;
   Test_2;
   Test_3;
end Test_Sort;
