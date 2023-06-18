package Example with SPARK_Mode is

   type T_Table is array (Positive range 1 .. 1000) of Natural;

   procedure Increment (Table : in out T_Table)
   --  Increments the value of all the components of the array
   with
       Global => null,
       Depends => (Table => Table),
       Pre => Table'Length > 0 and then (for all i in Table'Range => Table(i) <= T_Table'Last - 1),
     Post=> (for all i in Table'Range => Table(i) = Table'Old (i) + 1);

end Example;







































--  Global => null,
--       Depends => (Table => Table),
--       Pre  => (for all J in Table'Range => Table(J) /= Natural'Last),
--       Post => (for all J in Table'Range => Table(J) = Table'Old(J) + 1)
