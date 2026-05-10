/*
Realize uma consulta que mostre o nome principal, o sobrenome e o volume da 
coleta dos doadores que doaram um volume entre 400 e 450 e cujo nome principal
termine com a letra "a".
*/

SELECT t1.nome_principal, t1.sobrenome, t3.volume_coleta
FROM PESSOA t1
INNER JOIN DOADOR t2
ON t1.cpf = t2.cpf
INNER JOIN DOACAO t3
ON t2.cpf = t3.cpf_doador
AND t3.volume_coleta BETWEEN 400 AND 450
AND t1.nome_principal LIKE '%a';
