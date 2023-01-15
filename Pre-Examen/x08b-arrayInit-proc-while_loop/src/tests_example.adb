with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Tests_Example is

   procedure Test_1 is
      V        : T_Vector (1 .. 3) := (1, 2, 3);
      Expected : constant T_Vector (1 .. 3) := (1, 1, 1);

   begin
      Put ("Test_1 ............................................ ");
      Init_While_Loop (V, 1);
      pragma Assert (V = Expected);
      Put_Line ("OK");
   end Test_1;

begin
   Put_Line ("********************* Tests: Example_2");
   Test_1;
end;

