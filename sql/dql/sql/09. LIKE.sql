/*
 * LIKE
 *
 * Usos:
 * 1. Realize uma consulta que mostre o nome principal, o sobrenome e o volume da 
 *    coleta dos doadores que doaram um volume entre 400 e 450 e cujo nome principal
 *    termine com a letra "a".
 */

SELECT P.nome_principal, P.sobrenome, DC.volume_coleta
FROM Pessoa P INNER JOIN DOADOR D ON P.cpf = D.cpf
     INNER JOIN DOACAO DC ON D.cpf = DC.cpf_doador
WHERE DC.volume_coleta BETWEEN 400 AND 450 AND P.nome_principal LIKE '%a';
