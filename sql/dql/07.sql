/*
Realize uma consulta que mostre a quantidade total de bolsas de hemocomponentes 
estocadas, agrupadas por tipo sanguíneo, mas mostre apenas os tipos que possuem
mais de 2 bolsas registradas.
*/

SELECT tipo_sanguineo, COUNT(*) as qtd_tipo
FROM HEMOCOMPONENTE
GROUP BY tipo_sanguineo
HAVING qtd_tipo > 2;