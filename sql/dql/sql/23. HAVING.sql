/*
 * HAVING
 *
 * Usos:
 * 1. Realiza uma consulta que mostre a quantidade total de bolsas de hemocomponentes 
 *    estocadas, agrupadas por tipo sanguíneo, mas mostre apenas os tipos que possuem
 *    mais de 2 bolsas registradas.
 * 2. Agrupa os doadores por sua cidade de naturalidade e exibe apenas as cidades 
 *    que possuem mais de 5 doadores registrados.
 */


SELECT tipo_sanguineo, COUNT(*) AS qtd_tipo
FROM HEMOCOMPONENTE
GROUP BY tipo_sanguineo
HAVING COUNT(*) > 2;

SELECT naturalidade_municipio, COUNT(*) AS qtd_doadores
FROM DOADOR
GROUP BY naturalidade_municipio
HAVING COUNT(*) > 5;