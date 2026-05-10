/*
Realize uma consulta que mostre o CPF, a naturalidade (estado e município) e o 
tipo sanguíneo dos doadores que possuem os tipos sanguíneos 'A+', 'B+' ou 'O+'.
*/

SELECT cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo
FROM DOADOR
WHERE tipo_sanguineo IN ('A+', 'B+', 'O+')