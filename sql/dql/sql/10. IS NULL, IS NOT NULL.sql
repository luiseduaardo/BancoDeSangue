/*
 * IS NULL, IS NOT NULL
 *
 * Usos:
 * 1. Seleciona o nome completo e cargo de todo funcionário que não tem supervisor.
 * 2. Seleciona o nome dos doadores e a data e o volume de coleta de sangue de toda
 *    doação que fizeram, com a condição de que o doador não tem contato de emergência.
 * 3. Seleciona o nome do hemocentro e o tipo e validade do componente
 *    de sangue cujo tipo é A ou AB (não importa fator Rh) que não 
 *    foi transferido para nenhuma agência ou hemocentro ainda.
 */

SELECT (P.nome_principal || ' ' || P.sobrenome) AS nome_completo, F.cargo
FROM Pessoa P INNER JOIN Funcionario F ON P.cpf = F.cpf
WHERE F.cpf_supervisor IS NULL;

SELECT P.nome_principal, DC.data_coleta, DC.volume_coleta
FROM Pessoa P INNER JOIN Doador D ON P.cpf = D.cpf
     INNER JOIN Doacao DC ON DC.cpf_doador = D.cpf
WHERE D.ctt_emergencia IS NULL;

SELECT H.nome, C.componente, C.validade
FROM Hemocentro H INNER JOIN Lote L ON L.hemocentro_origem = H.cnpj
     INNER JOIN Hemocomponente C ON L.codigo_hemocomponente = C.codigo
WHERE C.tipo_sanguineo LIKE 'A%'
    AND L.hemocentro_transferido IS NULL
    AND L.agencia_transferida IS NULL;