# Sistema de Gerenciamento de Banco de Sangue

Este repositório contém os artefatos do projeto de banco de dados para um sistema de gerenciamento de Banco de Sangue.

## Equipe
* Jesper Ian Santos Brayner Rodrigues Alves <[jisbra](mailto:jisbra@cin.ufpe.br)>
* João Vitor Figueiredo de Vasconcelos <[jvfv](mailto:jvfv@cin.ufpe.br)>
* Luan Gustavo Nogueira de Souza <[lgns](mailto:lgns@cin.ufpe.br)>
* Luís Eduardo Cavalcante Santos <[lecs2](mailto:lecs2@cin.ufpe.br)>
* Mairon Rodrigues Nunes <[mrn](mailto:mrn@cin.ufpe.br)>
* Nara Maria Silva de Pontes <[nmsp](mailto:nmsp@cin.ufpe.br)>

## Estrutura do Repositório

* `./docs`: Documentação completa do projeto antes da implementação física. Contém o arquivo `modelo_conceitual.png`, com o Diagrama Entidade-Relacionamento, bem como `modelo_logico.pdf`, com o modelo lógico-relacional e suas etapas de normalização até o modelo normalizado implementado na modelagem física.
* `./sql/ddl/ddl.sql`: Script de criação das tabelas (Data Definition Language). Contém as instruções `CREATE TABLE`, `CREATE SEQUENCE`, além da definição de chaves primárias, estrangeiras e restrições usando as cláusulas `CONSTRAINT` e `CHECK`.
* `./sql/dml/dml.sql`: Script de povoamento (Data Manipulation Language). Contém as instruções `INSERT INTO` com dados coerentes e elaborados para refletir o cenário real do banco de sangue.
* `./sql/dql/`: Placeholder para scripts de consulta e recuperação dos dados.

## Como Executar

Os scripts foram desenvolvidos e testados para o SGBD Oracle usando comandos de SQL e PL/SQL. Para verificar o funcionamento adequado:

1. Acesse o [Oracle Live SQL](https://livesql.oracle.com/) ou o Oracle SQL Developer.
2. Execute primeiramente todo o conteúdo do arquivo `./sql/ddl/ddl.sql` para instanciar o esquema estrutural, as sequências e as restrições.
3. Em seguida, execute o conteúdo do arquivo `./sql/dml/dml.sql` para realizar o povoamento completo das tabelas.