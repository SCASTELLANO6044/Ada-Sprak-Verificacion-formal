with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Test_Extended_Rotate_Left is

   --  E = 1             E = 10
   --  V = (10)          V = (1)

   procedure Test_1 is
      V1     :          T_Vector (5 .. 5) := (5 => 10);
      Result : constant T_Vector (5 .. 5) := (5 => 1);
   begin
      Put ("Test_1 ............................... ");
      Example.E := 1;
      Extended_Rotate_Left (V1);
      pragma Assert (Result = V1);
      pragma Assert (Example.E = 10);
      Put_Line ("OK");
   end Test_1;

   --  E = 2             E = 10
   --  V = (10,20)       V = (20,2)

   procedure Test_2 is
      V1     :          T_Vector (5 .. 6) := (10, 20);
      Result : constant T_Vector (5 .. 6) := (20, 2);

   begin
      Put ("Test_2 ............................... ");
      Example.E := 2;
      Extended_Rotate_Left (V1);
      pragma Assert (Result = V1);
      pragma Assert (Example.E = 10);
      Put_Line ("OK");
   end Test_2;

   --  E = 3            E = 10
   --  V = (10,20,30)   V = (20,30,3)

   procedure Test_3 is
      V1     :          T_Vector := (10, 20, 30);
      Result : constant T_Vector := (20, 30, 3);

   begin
      Put ("Test_3 ............................... ");
      Example.E := 3;
      Extended_Rotate_Left (V1);
      pragma Assert (Result = V1);
      pragma Assert (Example.E = 10);
      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("******************** Tests: Extended_Rotate_Left");
   Test_1;
   Test_2;
   Test_3;
end Test_Extended_Rotate_Left;
