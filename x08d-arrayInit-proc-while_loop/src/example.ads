package Example with SPARK_Mode is

   type T_Table is array (Positive range <>) of Integer;

   procedure Init_While_Loop
     (Table : in out T_Table;
      Value : Integer := 0)
     with
       Global  => null,
       Depends => (Table => (Table, Value)),
       Pre     => Table'Length > 0 and then Table'Last < Natural'Last,
       Post    => (for all J in Table'Range => Table (J) = Value);

end Example;
