package Example with SPARK_Mode is

   type T_Table is array (Positive range <>) of Integer;

   procedure Init_For_Loop
     (Table : in out T_Table;
      Value : Integer := 0)
     with
       Global  => null,
       Depends => (Table => (Table, Value)),
       Post    => (for all J in Table'Range => Table (J) = Value);

end Example;
