/*
 * UPDATE
 *
 * Usos:
 * 1. Preencher emails para uma nova coluna "email" de Pessoa
 */

-- Caso ainda não tenha executado o script de ALTER TABLE,
-- descomente as linhas a seguir.
-- ALTER TABLE PESSOA ADD (email VARCHAR2 (50));
-- ALTER TABLE PESSOA ADD (CONSTRAINT check_email CHECK (email LIKE '%@%.com'));

UPDATE PESSOA SET email = (LOWER(TRANSLATE(nome_principal || sobrenome, 
              'ÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜáçéíóúàèìòùâêîôûãõëü', 
              'ACEIOUAEIOUAEIOUAOEUaceiouaeiouaeiouaoeu')) || '@gmail.com')
WHERE email IS NULL;