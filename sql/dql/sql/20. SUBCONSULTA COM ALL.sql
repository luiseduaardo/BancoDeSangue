/*
 * SUBCONSULTA COM ALL
 *
 * Usos:
 * 1. Realiza uma consulta que mostre todos os dados dos hemocentros que possuem
 *    a capacidade maior que todos os hemocentros localizados no CEP "50740000".
 * 2. Listar os hemocomponentes que possuem uma data de validade superior à de 
 *    todos os componentes do tipo B.
 */

SELECT *
FROM HEMOCENTRO
WHERE capacidade > ALL (
    SELECT capacidade
    FROM HEMOCENTRO
    WHERE cep = '50740000'
);

SELECT *
FROM HEMOCOMPONENTE
WHERE validade >
ALL (SELECT validade
    FROM HEMOCOMPONENTE
    WHERE tipo_sanguineo LIKE 'B%');