[3 puntos] Escribe el contrato (global, depends, precondición y postcondición) que permite
verificar formalmente en SPARK una función que tiene 4 parámetros de tipo natural (A, B,
C, D), retorna un número natural entre 35 y 175, y calcula (A - C) / (D * B).

function Ej1 (A:Natural, B:Natural, C:Natural, D:Natural)with
    Global => null,
    Depends => (Ej1 => (A, B, C, D)),
    Pre => (if A > 0 and C < 0 then
            A <= Natural'Last + C
            elsif A < 0 and C > 0 then
            A >= Natural'First + C) and then
            (if D > 0 and B > 0 then
            D <= Natural'Last/B 
            elsif D > 0 and B < 0 then
            B >= Natural'First / D
            elsif D < 0 and B > 0 then
            D >= Natural'First / B
            elsif D < 0 and B < 0 then
            D >= Natural'Last / B) and then
            (A - C) / (D * B) in 35 .. 175,
    Post => Ej1'Result = (A - C) / (D * B);
