/*
 * LIKE
 *
 * Usos:
 * 1. Realiza uma consulta que mostra o nome principal, o turno e o status
 *    de todo funcionário cujo cargo tenha a palavra "médico".
 * 2. Seleciona o nome de todo hemocentro que se localiza em uma avenida.
 * 3. Realiza uma consulta que mostra o nome principal, o sobrenome e o volume da 
 *    coleta dos doadores que doaram um volume entre 400 e 450 e cujo nome principal
 *    termine com a letra "a".
 */

SELECT P.nome_principal, F.turno, F.status
FROM Pessoa P INNER JOIN Funcionario F ON P.cpf = F.cpf
WHERE LOWER(F.cargo) LIKE '%médico%';

SELECT H.nome
FROM Hemocentro H INNER JOIN Endereco E ON H.cep = E.cep
WHERE E.logradouro LIKE 'Avenida%';

SELECT P.nome_principal, P.sobrenome, DC.volume_coleta
FROM Pessoa P INNER JOIN DOADOR D ON P.cpf = D.cpf
     INNER JOIN DOACAO DC ON D.cpf = DC.cpf_doador
WHERE DC.volume_coleta BETWEEN 400 AND 450 AND P.nome_principal LIKE '%a';
