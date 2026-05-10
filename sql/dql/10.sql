/*
Realize uma consulta que mostre o CPF e o nome dos funcionários cujo salário 
é maior que o salário de qualquer funcionário do setor de "Triagem".
*/

SELECT *
FROM FUNCIONARIO f
LEFT JOIN CARGO c
ON f.cargo = c.nome_cargo
WHERE c.salario >
ANY (SELECT salario
    FROM CARGO
    WHERE setor = 'Triagem')
