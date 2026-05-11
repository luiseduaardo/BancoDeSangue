/*
 * COUNT
 *
 * Usos:
 * 1. Conta quantas doações foram processadas em cada hemocentro cadastrado.
 * 2. Liste a quantidade de doadores naturais de cada estado (UF).
 */

SELECT h.nome, COUNT(*)
FROM HEMOCENTRO h
LEFT JOIN DOACAO d
ON d.hemocentro_processamento = h.cnpj
GROUP BY h.nome;

SELECT naturalidade_estado, COUNT(*)
FROM DOADOR
GROUP BY naturalidade_estado;