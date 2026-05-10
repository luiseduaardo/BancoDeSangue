/*
Realize uma consulta que mostre o código, o componente e o volume da bolsa de 
hemocomponente que possui um volume maior (operador relacional) que o 
volume da bolsa de código 1003.
*/

SELECT codigo, componente, volume
FROM HEMOCOMPONENTE
WHERE volume > (SELECT volume FROM HEMOCOMPONENTE WHERE codigo = 1003)