with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Main is

   procedure Test_1 is
      Table : constant T_Matrix (1 .. 3,
                                1 .. 3) := (1 => (10, 2, 3),
                                            2 => ( 4, 5, 6),
                                            3 => ( 7, 8, 9));
   begin
      Put ("Test 1 ............................... ");
      pragma Assert (Max (Table) = 10);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table : constant T_Matrix (1 .. 3,
                                1 .. 3) := (1 => (1, 2, 3),
                                            2 => (4, 5, 6),
                                            3 => (7, 8, 9));
   begin
      Put ("Test 2 ............................... ");
      pragma Assert (Max (Table) = 9);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table : constant T_Matrix (1 .. 3,
                                1 .. 3) := (1 => (1,  2, 3),
                                            2 => (4, 15, 6),
                                            3 => (7,  8, 9));
   begin
      Put ("Test 3 ............................... ");
      pragma Assert (Max (Table) = 15);
      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Tests: Max (matrix)");
   Test_1;
   Test_2;
   Test_3;
end;
