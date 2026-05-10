/*
 * INNER JOIN
 *
 * Usos:
 * 1. Imprime o nome completo e endereço dos doadores registrados.
 * 2. Imprime as pressões sanguíneas aferidas, as medicações (e suas doses) e
 *    as doenças registradas (e sua cronicidade) de cada triagem, junto com seu código.
 * 3. Imprime o nome do hemocentro de origem, o nome do hemocentro de chegada e as
 *    informações do primeiro hemocomponente a ser unicamente transferido de centro a centro.
 */

SELECT (P.nome_principal || ' ' || P.sobrenome)
FROM Pessoa P INNER JOIN Doador D ON P.cpf = D.cpf;

SELECT T.codigo, T.pressao_sistolica, T.pressao_diastolica,
       D.doenca, D.cronica, M.medicamento, M.dose
FROM Triagem T INNER JOIN Medicacoes_Triagem M ON T.codigo = M.codigo_triagem
     INNER JOIN Doencas_Triagem D ON T.codigo = D.codigo_triagem;

SELECT H1.nome AS origem, H2.nome AS destino, C.componente, C.tipo_sanguineo, C.volume
FROM Hemocentro H1 INNER JOIN Lote L ON L.hemocentro_origem = H1.cnpj
     INNER JOIN Hemocentro H2 ON L.hemocentro_transferido = H2.cnpj
     INNER JOIN Hemocomponente C ON L.codigo_hemocomponente = C.codigo
WHERE C.codigo IN (
     SELECT MIN(codigo_hemocomponente)
     FROM Lote
     WHERE agencia_transferida IS NULL and hemocentro_transferido IS NOT NULL
);