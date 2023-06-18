package body Example with SPARK_Mode is

   function Search (Table : T_Table; Value : Integer) return Natural is
      Pos : Positive;
      R   : Natural := Not_Found;
   begin
      if Table'Length = 0 then
         return Not_Found;
      end if;

      Pos := Table'First;
      --  for Pos in Table'Range loop
      while Pos < Table'Last loop
         if Table (Pos) = Value then
            R := Pos;
         end if;

         pragma Loop_Variant (Increases => Pos);

         pragma Loop_Invariant (Pos in Table'First .. Table'Last - 1);

         pragma Loop_Invariant
           (R = Not_Found or else R in Table'First .. Pos);

         pragma Loop_Invariant
           (if R /= Not_Found then
               Table (R) = Value
             and then
              (for all J in R .. Pos =>
                 (if J /= R then
                      Table (J) /= Value))
            else
              (for all J in Table'First .. Pos =>
                   Table (J) /= Value)
       );

         Pos := Pos + 1;
      end loop;

      if Table (Table'Last) = Value then
         R := Table'Last;
      end if;

      return R;
   end Search;

end Example;

