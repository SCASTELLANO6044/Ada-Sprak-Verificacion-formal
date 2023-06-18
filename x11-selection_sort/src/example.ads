package Example with SPARK_Mode is

   type T_Table is array (Positive range <>) of Integer;

   procedure Swap (Table : in out T_Table;
                   Pos_1 : in     Positive;
                   Pos_2 : in     Positive)
     with
       Global => null,
       Depends => (Table => (Table, Pos_1, Pos_2)),
       Pre  => (Pos_1 in Table'Range
                  and then Pos_2 in Table'Range
                  and then Pos_1 /= Pos_2),

       Post => Table (Pos_1) = Table'Old (Pos_2)
                 and then Table (Pos_2) = Table'Old (Pos_1)
                 and then (for all K in Table'Range =>
                             (if K /= Pos_1 and K /= Pos_2 then
                                 Table (K) = Table'Old (K)));

   function Pos_Minimum (Table : T_Table) return Positive
      --  Returns the index of the smallest value in the Table. When the
      --  table has several components with the same smallest value it
      --  returns the smallest index.
     with
       Global => null,
       Depends => (Pos_Minimum'Result => Table),
       Pre  => Table'Length > 0,
       Post =>
          Pos_Minimum'Result in Table'Range
        and then
          (for all J in Table'Range =>
               Table (Pos_Minimum'Result) <= Table (J));

   function Is_Sorted (Table : T_Table) return Boolean is
     (for all J in Table'Range =>
        (for all K in J .. Table'Last =>
             Table (J) <= Table (K)));

   procedure Selection_Sort (Table : in out T_Table)
     with
       Global  => null,
       Depends => (Table => Table),
       Pre     => Table'Length > 0,
       Post    => Is_Sorted (Table);

end Example;
