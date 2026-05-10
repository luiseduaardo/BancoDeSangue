/*
 * MAX
 *
 * Usos:
 * 1. Imprima o maior volume de sangue já doado.
 * 2. Imprima o maior salário de todos os cargos.
 * 3. Realize uma consulta que calcule e mostre a pressão sistólica máxima, a pressão 
 *    sistólica mínima e a média das pressões registradas na tabela Triagem.
 */

SELECT MAX(volume_coleta) FROM Doacao;

SELECT MAX(salario) FROM Cargo;

SELECT  MAX(pressao_sistolica) AS max_sistolica, 
        MIN(pressao_sistolica) AS min_sistolica, 
        AVG(pressao_sistolica) AS avg_sistolica
FROM TRIAGEM;