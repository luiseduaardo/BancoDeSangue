/*
 * SUBCONSULTA COM ANY
 *
 * Usos:
 * 1. Realize uma consulta que mostre o CPF e o nome dos funcionários cujo salário 
 *    é maior que o salário de qualquer funcionário do setor de "Triagem".
 * 2. Selecionar funcionários que possuam o mesmo nível de escolaridade que 
 *    qualquer um dos funcionários que ocupam o cargo de 'Médico', mas não seja médico.
 */

SELECT *
FROM FUNCIONARIO f
LEFT JOIN CARGO c
ON f.cargo = c.nome_cargo
WHERE c.salario >
ANY (SELECT salario
    FROM CARGO
    WHERE setor = 'Triagem');

SELECT *
FROM FUNCIONARIO
WHERE escolaridade =
ANY (SELECT escolaridade 
    FROM FUNCIONARIO 
    WHERE cargo = 'Médico')
AND cargo != 'Médico';