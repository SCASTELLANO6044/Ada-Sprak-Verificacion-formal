with Pkg_Add; use Pkg_Add;
package body Pkg_Multiply with
   SPARK_Mode
is

   procedure Multiply
     (First_Operand : Integer; Second_Operand : Integer; Result : out Integer)
   is
   begin
      Result := 0;
      if First_Operand > 0 and Second_Operand >0 then
         for i in 1 .. Second_Operand loop
            Result := Add(Result, First_Operand);
            pragma Loop_Invariant (Result = First_Operand * i);
         end loop;
      elsif First_Operand > 0 and Second_Operand < 0 then
         for i in 1 .. First_Operand loop
            Result := Add(Result, Second_Operand);
            pragma Loop_Invariant (Result = Second_Operand *i);
         end loop;
      elsif First_Operand < 0 and Second_Operand > 0 then
         for i in 1 .. Second_Operand loop
            Result := Add(Result, First_Operand);
            pragma Loop_Invariant (Result = First_Operand * i);
         end loop;
      elsif First_Operand < 0 and Second_Operand < 0 then
         for i in 1 .. -Second_Operand loop
            Result := Add (Result, -First_Operand);
            pragma Loop_Invariant(Result = First_Operand*(-i));
         end loop;
      end if;

      --  Result := 0;
      --  if First_Operand > 0 and then Second_Operand > 0 then
      --
      --     for i in 1 .. Second_Operand loop
      --
      --        Result := Add (Result, First_Operand);
      --        pragma Loop_Invariant(Result = First_Operand*i);
      --     end loop;
      --
      --  elsif First_Operand > 0 and then Second_Operand < 0 then
      --
      --     for i in 1 .. First_Operand loop
      --        Result := Add (Result, Second_Operand);
      --        pragma Loop_Invariant(Result = Second_Operand * i);
      --     end loop;
      --
      --  elsif First_Operand < 0 and then Second_Operand > 0 then
      --
      --     for i in 1 .. Second_Operand loop
      --        Result := Add (Result, First_Operand);
      --        pragma Loop_Invariant(Result = First_Operand*i);
      --     end loop;
      --
      --  elsif First_Operand < 0 and then Second_Operand < 0 then
      --
      --     for i in 1 .. -Second_Operand loop
      --        Result := Add (Result, -First_Operand);
      --        pragma Loop_Invariant(Result = First_Operand*(-i));
      --     end loop;
      --
      --  end if;
   end Multiply;

end Pkg_Multiply;
