/*
 * ORDER BY
 *
 * Usos:
 * 1. Lista todos os hemocomponentes ordenando-os da data de validade mais 
 *    próxima para a mais distante.
 * 2. Lista o nome completo e a data de admissão de todos os funcionários, 
 *    ordenando dos mais antigos para os mais recentes.
 */
 
 SELECT *
 FROM HEMOCOMPONENTE
 ORDER BY validade DESC;
 
 SELECT *
 FROM FUNCIONARIO
 ORDER BY data_admissao ASC;
 
 