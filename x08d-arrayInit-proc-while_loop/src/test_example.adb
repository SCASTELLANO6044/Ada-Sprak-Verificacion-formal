with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Test_Example is

   procedure Test_1 is
      Table  : T_Table (1 .. 5);
      Result : constant T_Table := (3, 3, 3, 3, 3);
   begin
      Put ("Test_1: Init (Table, 3) .............................. ");
      
      Init_While_Loop (Table, 3);
      pragma Assert (Table = Result);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table  : T_Table (1 .. 5);
      Result : constant T_Table := (-3, -3, -3, -3, -3);
   begin
      Put ("Test_2: Init (Table, -3) ............................. ");
      
      Init_While_Loop (Table, -3);
      pragma Assert (Table = Result);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table  : T_Table (11 .. 15);
      Result : constant T_Table := (0, 0, 0, 0, 0);
   begin
      Put ("Test_3: Init (Table, 0) .............................. ");
      
      Init_While_Loop (Table, 0);
      pragma Assert (Table = Result);

      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Tests: ArrayInit");
   Test_1;
   Test_2;
   Test_3;
end;
