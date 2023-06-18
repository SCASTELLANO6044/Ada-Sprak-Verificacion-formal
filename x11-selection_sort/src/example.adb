package body Example with SPARK_Mode is

   ----------
   -- Swap --
   ----------

   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in     Positive;
      Pos_2 : in     Positive)
   is
      Temp : constant Integer := Table (Pos_1);
   begin
      Table (Pos_1) := Table (Pos_2);
      Table (Pos_2) := Temp;
   end Swap;

   -----------------
   -- Pos_Minimum --
   -----------------

   function Pos_Minimum (Table : T_Table) return Positive is
      Pos : Positive;

   begin
      if Table'Length = 1 then
         return Table'First;
      end if;

      Pos := Table'First;

      for J in Table'First + 1 .. Table'Last loop
         if Table (J) < Table (Pos) then
            Pos := J;
         end if;

         pragma Loop_Invariant (Pos in Table'First .. J);
         pragma Loop_Invariant (for all K in Table'First .. J =>
                                    Table (K) >= Table (Pos));
      end loop;

      return Pos;
   end Pos_Minimum;

   --------------------
   -- Selection_Sort --
   --------------------

   procedure Selection_Sort (Table : in out T_Table) is
      Pos_Min : Positive;

   begin
      if Table'Length <= 1 then
         return;
      end if;

      for J in Table'First .. Table'Last - 1 loop
         Pos_Min := Pos_Minimum (Table (J .. Table'Last));

         if Pos_Min /= J then
            Swap (Table, J, Pos_Min);
         end if;

         pragma Loop_Invariant
           (for all K in Table'First .. J =>
              (for all L in K + 1 .. Table'Last =>
                   Table (K) <= Table (L)));
      end loop;
   end Selection_Sort;

end Example;

