package Example with SPARK_Mode is

   type T_Vector is array (Natural range <>) of Integer;

   procedure And (V : in out T_Vector; From : Natural; To: Natural)

   with
       Global => null,
       Depends => (V => (V, From, To)),
       Pre => ((for some i in V'Range => V(i) < 0) and then
                 V'Length > 0 and then
                   From >= V'First + 2 and then
                     From mod 2 /= 0 and then
                       To mod 2 /= 0 and then
                         From in V'Range and then
                           To <= V'Last - 2),
       Post =>(for all i in From .. To =>
                 (if i mod 2 /= 0 then
                        if i = From then V'Old(i) = V(i)
                    else
                      V(i - 2) = V'Old(i)));
end Example;







































--  Global => null,
--       Depends => (Table => Table),
--       Pre  => (for all J in Table'Range => Table(J) /= Natural'Last),
--       Post => (for all J in Table'Range => Table(J) = Table'Old(J) + 1)
