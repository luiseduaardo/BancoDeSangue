/*
 * DELETE
 * 
 * Usos:
 * 1. Deleta os telefones das tabelas de telefone onde o DDD seja nulo.
 */
 
DELETE FROM Telefone_Agencia WHERE DDD IS NULL;
DELETE FROM Telefone_Hemocentro WHERE DDD IS NULL;
DELETE FROM Telefone_Pessoa WHERE DDD IS NULL;
