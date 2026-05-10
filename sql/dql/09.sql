/*
Realize uma consulta que mostre o CNPJ e o endereço completo (cep, logradouro, 
número e complemento) das agências que receberam lotes provenientes do 
hemocentro "Hemocentro Esperança".
*/

SELECT cnpj, a.cep, e.logradouro, numero, complemento
FROM AGENCIA a
LEFT JOIN ENDERECO e
ON a.cep = e.cep
WHERE cnpj IN (
    SELECT agencia_transferida
    FROM LOTE t1
    LEFT JOIN HEMOCENTRO t2
    ON t1.hemocentro_origem = t2.cnpj
    WHERE NOME = 'Hemocentro Esperança'
)