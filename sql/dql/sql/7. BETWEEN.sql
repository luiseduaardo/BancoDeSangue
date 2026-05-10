/*
 * BETWEEN
 * 
 * Usos:
 * 1. Realiza uma consulta que imprime os nomes completos dos funcionários admitidos
 *    entre 2020 e 2024.
 * 2. Realiza uma consulta que imprime o nome, a data de coleta e volume
 *    de doações feitas por doadores nascidos entre 2008 e 2013 (13 a 18 anos).
 * 3. Realiza uma consulta que imprime as informações de todas as
 *    agências com telefone situado no Nordeste (DDD entre 81 e 89).
 */

SELECT (P.nome_principal || ' ' || P.sobrenome) AS nome_completo
FROM Pessoa P INNER JOIN Funcionario F ON P.cpf = F.cpf
WHERE F.data_admissao BETWEEN TO_DATE('2020-01-01', 'YYYY-MM-DD') AND TO_DATE('2024-12-31', 'YYYY-MM-DD');

SELECT P.nome_principal, DC.data_coleta, DC.volume_coleta
FROM Pessoa P INNER JOIN Doador D ON P.cpf = D.cpf 
     INNER JOIN Doacao DC ON D.cpf = DC.cpf_doador
WHERE P.data_nascimento BETWEEN TO_DATE('2008-01-01', 'YYYY-MM-DD') AND TO_DATE('2013-12-31', 'YYYY-MM-DD');

SELECT A.cnpj, A.cep, A.numero, A.complemento
FROM Agencia A INNER JOIN Telefone_Agencia T ON A.cnpj = T.cnpj_agencia
WHERE T.ddd BETWEEN 81 AND 89;