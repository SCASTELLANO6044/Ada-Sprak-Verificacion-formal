Escribe el contrato (global, depends, precondición y postcondición) que permite
verificar formalmente en SPARK una función que tiene 4 parámetros de tipo natural (A, B,
C, D), retorna un número natural entre 40 y 130, y calcula (D * C) / (A + B).

function Ej1 (A: Natural, B: Natural, C: Natural, D: Natural) with
    Global => null,
    Depends => (Ej1 => (A, B, C, D)),
    Pre => ((if A > 0 and B > 0 then
            A <= Natural'Last - B
            elsif A < 0 and B < 0 then
            A >= Natural'First - B) and then
            (if D > 0 and C > 0 then
            D <= Natural'Last / B
            elsif D > 0 and C < 0 then
            D <= Natural'First / C
            elsif D < 0 and C > 0 then
            D >= Natural'First / C
            elsif D < 0 and C < 0 then
            D >= Natural'Last / C) and then
            (D*C)/(A+B) in 40 .. 130),
    Post => Ej1'Result = (D*C)/(A+B);


[7 puntos] Utilizando un bucle WHILE, escribe el código de este procedimiento y completa
su contrato (Global, Depends, Pre-condiciones, Post-condiciones) y sus variantes e
invariantes para que se pueda verificar formalmente.

package Pregunta2 with SPARK_Mode is
 type T_Vector is array (Natural range <>) of Integer;

 procedure Rotate (V : in out T_Vector; From : Natural; To: Natural);
 -- El vector V debe tener al menos un numero negativo.
 --
 -- Los parámetros From y To sólo pueden recibir valores impares.
 -- El índice From apunta (como mínimo) al segundo elemento de V.
 --
 -- Utilizando un bucle while este procedimiento rota hacia la derecha
 -- sólo los elementos que hay entre From y To (ambos incluidos)
 -- que están en posiciones impares del vector.
 -- Ejemplo:
 -- V(1..8) = [-10, 20, 30, 40, 50, 60, 70, 80] From = 3 To = 7
 --
 -- Devuelve: V(1..8) = [-10, 20, 70, 40, 30, 60, 50, 80]
end Example;
    
