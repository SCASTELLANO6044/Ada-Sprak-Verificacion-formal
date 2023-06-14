package body Tables is

   function Minimum (Table : T_Table) return Integer is

      min : Integer := Table(1);

   begin
      for i in Table'Range loop
         if min > Table(i) then
            min := Table(i);
         end if;
      end loop;

      return min;
   end Minimum;

   function Pos_Minimum (Table : T_Table) return Natural is

      min : Integer := Table(1);
      pos : Natural := 1;

   begin
      for i in Table'Range loop
         if min > Table(i) then
            min := Table(i);
            pos := i;
         end if;
      end loop;

      return pos;
   end Pos_Minimum;

   function Linear_Search
     (Table : T_Table; Value : Integer) return Integer is

      index : Integer := 0;

   begin
      for i in Table'Range loop
         if Table(i) = Value then
            index := i;
            return index;
         end if;
      end loop;

      return Integer'First;
   end Linear_Search;

   function Binary_Search
     (Table : T_Table; Value : Integer) return Integer is

      middle : constant Integer := Table'First + (Table'Length/2);

   begin

      if Table'Length = 2 then
         if Table(Table'First) = Value then
            return Table'First;
         elsif Table(Table'Last) = Value then
            return Table'Last;
         else
            return Integer'First;
         end if;
      end if;

      if Table(middle) = Value then
         return middle;
      elsif Table(middle) > Value then
         return Binary_Search(Table(Table'First .. middle), Value);
      elsif Table(middle) < Value then
         return Binary_Search(Table(middle .. Table'Last), Value);
      end if;

      return Integer'First;
   end Binary_Search;

   procedure Swap
     (A : in out Integer;
      B : in out Integer) is

      C : Integer := 0;

   begin
      C := A;
      A := B;
      B := C;
   end Swap;

   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in     Natural;
      Pos_2 : in     Natural) is

      C : Integer := 0;

   begin
      C := Table(Pos_1);
      Table(Pos_1) := Table(Pos_2);
      Table(Pos_2) := C;
   end Swap;

   procedure Bubble_Sort (Table : in out T_Table) is

      done : Boolean := False;

   begin
      while done = False loop
         done := True;

         for i in Table'Range loop
            if i /= Table'Last then
               if Table(i) > Table(i + 1) then
                  Swap(Table, i, i + 1);
                  done := False;
               end if;
            end if;
         end loop;
      end loop;
   end Bubble_Sort;

   procedure Selection_Sort (Table : in out T_Table) is

   begin

      for i in Table'Range loop
         for j in i + 1 .. Table'Last loop
            if Table(i) > Table(j) then
               Swap(Table, i, j);
            end if;
         end loop;
      end loop;

   end Selection_Sort;

   procedure Insertion_Sort (Table : in out T_Table) is

      key : Integer;
      j : Integer;

   begin

      for i in 2 .. Table'Last loop
         key := Table(i);
         j := i - 1;

         while j >= 0 and then Table(j) > key loop
            Table(j + 1) := Table(j);
            j := j - 1;
         end loop;

         Table(j + 1) := key;

      end loop;
   end Insertion_Sort;

   procedure Shell_Sort (Table : in out T_Table) is -- CORREGIR

      j : Integer := Table'Last/2 + 1;

   begin

      for i in Table'First .. Table'Last/2 loop
         if Table(i) > Table(j) then
            Swap(Table, i, j);
         end if;
         j := j + 1;
      end loop;

   end Shell_Sort;

   procedure Merge_Sort (Table : in out T_Table) is
   begin
      null;
   end Merge_Sort;

   procedure Quick_Sort (Table : in out T_Table) is

   begin
      null;
   end Quick_Sort;

end Tables;
