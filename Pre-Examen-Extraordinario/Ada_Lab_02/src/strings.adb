package body Strings is

   procedure Clear (Str : in out T_String) is

   begin

      Str.Buffer(1) := ' ';

   end Clear;

   procedure Init (Str : in out T_String; Value : String) is

   begin

      Str.Length := Value'Length;

      for i in Value'Range loop
         Str.Buffer(i) := Value(i);
      end loop;

   end Init;

   function To_String (Str : T_String) return String is

   begin

      if Str.Buffer(1) = ' ' then
         return "";
      end if;

      return Str.Buffer(1 .. Str.Length);

   end To_String;

   function Are_Equal
     (S1 : T_String;
      S2 : T_String) return Boolean
   is

      equals : Integer := 0;

   begin

      if S1.Length /= S2.Length then
         return False;
      end if;

      for i in 1 .. S1.Length loop
         if S1.Buffer(i) = S2.Buffer(i) then
            equals := equals + 1;
         end if;
      end loop;

      if equals = S1.Length then
         return True;
      end if;

      return False;

   end Are_Equal;

   function Search
     (Str   : T_String;
      Value : Character) return Natural
   is
   begin

      for i in 1 .. Str.Length loop
         if Str.Buffer(i) = Value then
            return i;
         end if;
      end loop;

      return 0;
   end Search;

   function Search
     (Str   : T_String;
      Value : String) return Natural
   is

      res : Natural := 0;
      aux : Natural;

   begin

      for i in 1 .. Str.Length loop
         if Str.Buffer(i) = Value(Value'First) then
            aux := i;
            for j in 2 .. Value'Length loop
               aux := aux + 1;
               if Str.Buffer(aux) = Value(j) then
                  res := i;
               else
                  res := 0;
               end if;
            end loop;
         end if;
      end loop;

      return res;
   end Search;

end Strings;
