/*
 * LEFT, RIGHT, FULL OUTER JOIN
 *
 * Usos:
 * 1. Realiza uma consulta que mostre o CPF e o nome de todos os doadores em ordem 
 *    alfabética e, caso possuam, os dados das doações realizadas por eles (garanta 
 *    que todos os doadores apareçam na consulta, mesmo aqueles que não tiverem 
 *    doações cadastradas).
 */

SELECT t1.cpf, t1.nome_principal, t1.sobrenome, t3.*
FROM PESSOA t1
LEFT JOIN DOADOR t2
ON t1.cpf = t2.cpf
LEFT JOIN DOACAO t3
ON t2.cpf = t3.cpf_doador
ORDER BY t1.nome_principal, t1.sobrenome ASC;