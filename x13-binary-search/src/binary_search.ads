package Binary_Search with SPARK_Mode is

   type T_Table is array (Positive range <>) of Integer;

   Not_Found : constant Natural := 0;

   function Search (Table : T_Table; Value : Integer) return Natural with
     --  Returns whether the array contains the desired Value, and
     --  if so, at which index. Returns Not_Found when no component
     --  has the given Value.
     Global => null,
     Depends => (Search'Result => (Table, Value)),
     Pre =>
       Table'Last < Positive'Last
          and then
       (for all J in Table'Range =>                  --  Orden Parcial
          (if J /= Table'Last then
                   Table (J) <= Table (J+1))),

     --    (for all J in Table'Range =>              --  Orden Total
     --       (for all K in J .. Table'Last =>
     --            Table (J) <= Table (K))),

     Post =>
       (if Search'Result /= Not_Found then
          Table (Search'Result) = Value
        else
          (For all J in Table'Range =>
                 Table (J) /= Value));

end Binary_Search;

