package Example with SPARK_Mode is

   Not_Found : constant Natural := 0;

   type T_Table is array (Positive range <>) of Integer;

   function Search (Table : T_Table; Value : Integer) return Natural with
     --  Returns whether the array contains the desired Value, and
     --  if so, at which index. Returns Not_Found when no component
     --  has the given Value.
     Global  => null,
     Depends => (Search'Result => (Table, Value)),

     Post    =>
       (Search'Result = Not_Found or else Search'Result in Table'Range)
     and then
       (if Search'Result /= Not_Found then
          Table (Search'Result) = Value
             and then
          (for all J in Search'Result .. Table'Last =>
                 (if J /= Search'Result then
                      Table (J) /= Value))
        else
          (for all J in Table'Range =>
              Table (J) /= Value)
       );

 end Example;

