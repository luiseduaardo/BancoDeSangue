/*
 * INSERT INTO
 * 
 * Usos:
 * 1. Insere um novo registro na tabela Endereco.
 * 2. Insere um novo registro na tabela Agencia.
 */

INSERT INTO Endereco(cep, logradouro)
VALUES ('52171011', 'Praça Farias Neves');

INSERT INTO Agencia(cnpj, cep, numero, complemento)
VALUES ('10572048000209', '52171011', 0, 'Agência Transfusional - Hospital da Restauração');