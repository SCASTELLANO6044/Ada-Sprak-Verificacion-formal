package Example with SPARK_Mode is

   type T_Vector is array (Natural range <>) of Integer;

   procedure And (V1 : in out T_Vector; V2: T_Vector;
                        From : Natural; To: Natural)

   with
       Global => null,
       Depends => (V1 => (V1, V2, From, To)),
       Pre => (V1'Length > 0 and then
                 V2'Length > 0 and then
                   V1'Length = V2'Length and then
                     V1'First = V2'First and then
                       V1'Last = V2'Last and then
                         From <= To and then
                           From >= V1'First and then
                             From <= V1'Last - 1  and then
                               To <= V1'Last - 1  and then
                                 To >= V1'First and then
                 (for all i in V1'Range => V1(i) = V2(i))),
       Post => (for all i in From .. To =>
                  (if V1'Old(i) = 0 and V2(i) = 0 then V1(i) = 0
                     elsif V1'Old(i) = 0 and V2(i) = 1 then V1(i) = 0
                       elsif V1'Old(i) = 1 and V2(i) = 0 then V1(i) = 0
                     elsif V1'Old(i) = 1 and V2(i) = 1 then V1(i) = 1));

end Example;







































--  Global => null,
--       Depends => (Table => Table),
--       Pre  => (for all J in Table'Range => Table(J) /= Natural'Last),
--       Post => (for all J in Table'Range => Table(J) = Table'Old(J) + 1)
