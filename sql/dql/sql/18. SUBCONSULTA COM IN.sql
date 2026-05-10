/*
 * SUBCONSULTA COM IN
 *
 * Usos:
 * 1. Imprima os nome dos doadores que doaram no dia de doação mais antigo registrado.
 * 2. Realiza uma consulta que mostra o CPF, o cargo e a escolaridade
 *    de todos os funcionários que já triaram um doador.
 * 3. Realiza uma consulta que mostre o CNPJ e o endereço completo
 *    (cep, logradouro, número e complemento) das agências que 
 *    receberam lotes provenientes do hemocentro "Hemocentro Esperança".
 */

SELECT P.nome_principal
FROM Pessoa P INNER JOIN Doador D ON P.cpf = D.cpf
     INNER JOIN Doacao DC ON DC.cpf_doador = P.cpf
WHERE DC.data_coleta = (
    SELECT MIN(data_coleta) FROM Doacao
);

SELECT F.cpf, F.cargo, F.escolaridade
FROM Funcionario F
WHERE F.cpf IN (
    SELECT cpf_funcionario
    FROM Tria
);

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
);