package body Binary_Search with SPARK_Mode is

   function Search (Table : T_Table; Value : Integer) return Natural is
      Left  : Positive;
      Right : Positive;
      Med   : Positive;

   begin
      if Table'Length = 0
        or else Value < Table (Table'First)
        or else Value > Table (Table'Last)
      then
         return Not_Found;
      end if;

      Left  := Table'First;
      Right := Table'Last;

      while Left <= Right loop
         Med := Left + (Right - Left) / 2;

         pragma Loop_Variant (Decreases => Right - Left);

         -- 1. Invariantes de los indices de la tabla

         pragma Loop_Invariant (Left in Table'Range);
         pragma Loop_Invariant (Right in Table'Range);
         pragma Loop_Invariant (Med in Left .. Right);

         -- 2. Invariantes del contenido de la tabla

         pragma Loop_Invariant
           (for all J in Table'First .. Left - 1 =>
              Table (J) < Value);

         pragma Loop_Invariant
           (for all J in Right + 1 .. Table'Last =>
              Table (J) > Value);

         if Table (Med) = Value then
            return Med;

         elsif Value > Table (Med) then
            Left := Med + 1;

         elsif Value < Table (Med) then
            Right := Med - 1;
         end if;
      end loop;

      return Not_Found;
   end Search;

end Binary_Search;

