
package body Example with SPARK_Mode is

   procedure Extended_Rotate_Left (V : in out T_Vector) is
      Tmp : constant Integer := E;
      J   : Natural;
   begin
      E := V (V'First);

      J := V'First;
      while J < V'Last loop
         V (J) := V (J+1);

         pragma Loop_Variant (Increases => J);

         --  1. Invariantes de indices

         pragma Loop_Invariant (J in V'First .. V'Last - 1);

         --  2. Invariantes del contenido

         pragma Loop_Invariant
           (for all K in V'First .. J =>
              V (K) = V'Loop_Entry (K+1));

         pragma Loop_Invariant
           (for all K in J + 1 .. V'Last =>
              V (K) = V'Loop_Entry (K));

         J := J + 1;
      end loop;

      V (V'Last) := Tmp;
   end Extended_Rotate_Left;

end Example;
