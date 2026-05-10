/*
 * IN
 *
 * Usos:
 * 1. Realiza uma consulta que mostra o CPF, a naturalidade (estado e município) e o 
 *    tipo sanguíneo dos doadores que possuem os tipos sanguíneos 'A+', 'B+' ou 'O+'.
 * 2. Realiza uma consulta que mostra o nome e o municipio de nascimento de todos os
 *    doadores que nasceram em Alagoas ou Sergipe.
 * 3. Seleciona o cnpj de todas as agências e hemocentros que estão localizados
 *    ou na Avenida Central, ou na Avenida Caxangá, ou na Avenida Conde da Boa Vista. 
 */

SELECT cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo
FROM Doador
WHERE tipo_sanguineo IN ('A+', 'B+', 'O+');

SELECT P.nome_principal, D.naturalidade_municipio
FROM Doador D INNER JOIN Pessoa P ON P.cpf = D.cpf
WHERE D.naturalidade_estado IN ('AL', 'SE');

SELECT cnpj
FROM (
    SELECT cnpj, cep FROM Hemocentro H
    UNION
    SELECT cnpj, cep FROM Agencia A
)
WHERE cep IN (
    SELECT cep FROM Endereco
    WHERE logradouro IN ('Avenida Central', 'Avenida Caxangá', 'Avenida Conde da Boa Vista')
);