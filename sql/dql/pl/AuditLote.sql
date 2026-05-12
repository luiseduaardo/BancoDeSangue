-- Trigger que ativa após perações de DELETE, UPDATE e INSERT, registrando o nome do tipo de operação e os dados do usuário que realizou a operação

DROP TABLE AuditoriaLote;
DROP SEQUENCE id_audit;

CREATE TABLE AuditoriaLote (
    id INTEGER,
    usuario VARCHAR2 (50),
    data_alteracao TIMESTAMP,
    operacao VARCHAR2 (50),

    CONSTRAINT auditorialote_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE id_audit
INCREMENT BY 1 START WITH 1;

CREATE OR REPLACE TRIGGER AuditLote
AFTER DELETE OR UPDATE OR INSERT ON Lote
DECLARE
    texto VARCHAR2 (50);

BEGIN
    IF INSERTING THEN
        texto := 'Inserção';
    ELSIF UPDATING THEN
        texto := 'Atualização';
    ELSE
        texto := 'Remoção';
    END IF;

    INSERT INTO AuditoriaLote (id, usuario, data_alteracao, operacao)
    VALUES (id_audit.NEXTVAL, USER, SYSTIMESTAMP, texto);
END;
