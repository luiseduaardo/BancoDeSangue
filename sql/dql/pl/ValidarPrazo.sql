/**
 * Automaticamente valida o prazo de validade 
 * inserido ou atualizado em qualquer hemocomponente.
 *
 * Causa um erro de aplicação quando o prazo
 * não é coerente com a data de processamento.
 */
CREATE OR REPLACE TRIGGER ValidarPrazo
BEFORE UPDATE OR INSERT ON Hemocomponente
FOR EACH ROW
DECLARE
    prazo_invalido EXCEPTION;
BEGIN
    IF :NEW.validade < :NEW.data_processamento THEN
        RAISE prazo_invalido;
    END IF;
EXCEPTION
    WHEN prazo_invalido THEN
        RAISE_APPLICATION_ERROR(-20400, 'Data de validade inválida para a data de processamento!');
END ValidatePrazo;
/

-- Teste
BEGIN
    INSERT INTO HEMOCOMPONENTE (codigo, componente, tipo_sanguineo, volume, validade, data_processamento) 
    VALUES (1016, 'Hemácias', 'AB+', 100, TO_DATE('2026-01-01', 'YYYY-MM-DD'), TO_DATE('2020-01-01', 'YYYY-MM-DD'));
END;