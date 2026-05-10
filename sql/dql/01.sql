/*
Realize os comandos de modificação de tabela e manipulação de dados necessários para: 
    - adicionar uma coluna "email" na tabela Pessoa e atualizar com os novos emails;
    - inserir um novo registro na tabela Agencia; 
    - e deletar os telefones da tabela Telefone_Pessoa onde o DDD seja nulo (IS NULL).
*/

ALTER TABLE PESSOA ADD (email VARCHAR2 (50));
ALTER TABLE PESSOA ADD (CONSTRAINT check_email CHECK (email LIKE '%@%.com'));

UPDATE PESSOA SET email = (LOWER(TRANSLATE(nome_principal || sobrenome, 
              'ÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜáçéíóúàèìòùâêîôûãõëü', 
              'ACEIOUAEIOUAEIOUAOEUaceiouaeiouaeiouaoeu')) || '@gmail.com');

INSERT INTO Endereco(cep, logradouro)
VALUES ('52171011', 'Praça Farias Neves');
INSERT INTO Agencia(cnpj, cep, numero, complemento)
VALUES ('10572048000209', '52171011', 0, 'Agência Transfusional - Hospital da Restauração');

DELETE FROM telefone_pessoa WHERE DDD IS NULL;