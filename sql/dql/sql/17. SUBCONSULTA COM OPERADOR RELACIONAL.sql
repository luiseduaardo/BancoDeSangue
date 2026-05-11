/*
 * SUBCONSULTA COM OPERADOR RELACIONAL
 *
 * Usos:
 * 1. Realize uma consulta que mostre o código, o componente e o volume da bolsa de 
 *    hemocomponente que possui um volume maior (operador relacional) que o 
 *    volume da bolsa de código 1003.
 * 2. Identifique os nomes completos dos doadores cujo peso é superior ao peso 
 *    médio de todos os doadores cadastrados no sistema.
 */

SELECT codigo, componente, volume
FROM HEMOCOMPONENTE
WHERE volume > (SELECT volume FROM HEMOCOMPONENTE WHERE codigo = 1003);

SELECT (p.nome_principal || ' ' || p.sobrenome) AS nome_completo, peso
FROM DOADOR d
LEFT JOIN PESSOA p
ON d.cpf = p.cpf
WHERE peso > (SELECT AVG(peso) FROM DOADOR);