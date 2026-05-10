/*
 * ALTER TABLE
 *
 * Usos:
 * 1. Adiciona uma coluna "email" na tabela Pessoa e um constraint na coluna criada.
 * 2. Migra o atributo "cronica" para a tipagem numérica ao invés de alfanumérica.
 */

-- Adiciona uma coluna "email" na tabela Pessoa e um constraint na coluna criada.
ALTER TABLE Pessoa ADD (email VARCHAR2 (50));
ALTER TABLE Pessoa ADD CONSTRAINT check_email CHECK (email LIKE '%@%.com');

-- Migra o atributo "cronica" para a tipagem numérica ao invés de alfanumérica.
ALTER TABLE Doencas_Triagem DROP CONSTRAINT bool_cronica;
ALTER TABLE Doencas_Triagem RENAME COLUMN cronica TO cronica_old;

ALTER TABLE Doencas_Triagem ADD (cronica NUMBER(1,0));
ALTER TABLE Doencas_Triagem ADD CONSTRAINT bool_cronica CHECK (cronica IN (0, 1));

UPDATE Doencas_Triagem SET cronica = 1 WHERE cronica_old = 'S';
UPDATE Doencas_Triagem SET cronica = 0 WHERE cronica_old = 'N';

ALTER TABLE Doencas_Triagem DROP (cronica_old);