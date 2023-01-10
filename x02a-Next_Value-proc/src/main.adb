with Ada.Text_IO; use Ada.Text_IO;
with Example;     use Example;

procedure Main is

   procedure Test_1 is
   begin
      Put ("Test_1: Next_Value (0): function.......................... ");
      
      pragma Assert (Next_Value (0) = 1);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test_2: Next_Value (1): function ......................... ");
      
      pragma Assert (Next_Value (1) = 2);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      X : Integer := 2;
   begin
      Put ("Test_3: Next_Value (2): proc ............................. ");
      
      Next_Value (X); 
      pragma Assert (X = 3);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      X : Integer := 4;
   begin
      Put ("Test_4: Next_Value (4): proc ............................. ");
      
      Next_Value (X); 
      pragma Assert (X = 5);

      Put_Line ("OK");
   end Test_4;

begin
   Put_Line ("********************* Tests: Next_Value");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
end;
