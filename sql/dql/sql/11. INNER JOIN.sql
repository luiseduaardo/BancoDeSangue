/*
 * INNER JOIN
 *
 * Usos:
 * 1. Imprime o nome completo e endereço dos doadores registrados.
 * 2. Imprime as pressões sanguíneas aferidas, as medicações (e suas doses) e
 *    as doenças registradas (e sua cronicidade) de cada triagem, junto com seu código.
 */

SELECT (P.nome_principal || ' ' || P.sobrenome)
FROM Pessoa P INNER JOIN Doador D ON P.cpf = D.cpf;

SELECT T.codigo, T.pressao_sistolica, T.pressao_diastolica,
       D.doenca, D.cronica, M.medicamento, M.dose
FROM Triagem T INNER JOIN Medicacoes_Triagem M ON T.codigo = M.codigo_triagem
     INNER JOIN Doencas_Triagem D ON T.codigo = D.codigo_triagem;