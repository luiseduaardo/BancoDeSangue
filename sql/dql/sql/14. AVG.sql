/*
 * AVG
 *
 * Usos:
 * 1. Imprime o peso médio de todos os doadores.
 * 2. Imprime o volume médio coletado em uma doação.
 * 3. Calcula média salarial por setor.
 * 4. Calcula a média de volume estocado por cada classe de Hemocomponente.
 */

SELECT AVG(peso) FROM Doador;

SELECT AVG(volume_coleta) FROM Doacao;

SELECT setor, AVG(salario) AS salario_medio
FROM CARGO
GROUP BY SETOR;

SELECT componente, AVG(volume) as volume_medio
FROM HEMOCOMPONENTE
GROUP BY componente;
