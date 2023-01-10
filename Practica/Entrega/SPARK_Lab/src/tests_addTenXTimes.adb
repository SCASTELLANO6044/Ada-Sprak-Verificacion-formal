with Ada.Text_IO;  use Ada.Text_IO;
with Pkg_addTenXTimes; use Pkg_addTenXTimes;

procedure Tests_addTenXTimes is

   procedure Test_1 is
   begin
      Put("Test 1: X = 1: ............................. ");

      pragma Assert(addTenXTimes(1) = 20);

      Put_Line("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put("Test 2: X = 5: ............................. ");

      pragma Assert(addTenXTimes(5) = 60);

      Put_Line("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put("Test 3: X = 0: ............................. ");

      pragma Assert(addTenXTimes(0) = 10);

      Put_Line("OK");
   end Test_3;

   procedure Test_4 is
   begin
      Put("Test 4: X = 10: ............................ ");

      pragma Assert(addTenXTimes(10) = 110);

      Put_Line("OK");
   end Test_4;

begin
   Put_Line("*********************** Tests_addTenXTimes");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
end Tests_addTenXTimes;
