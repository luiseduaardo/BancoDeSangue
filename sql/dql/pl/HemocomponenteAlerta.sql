DECLARE
    CURSOR c_estoque_alerta IS
        SELECT *
        FROM HEMOCOMPONENTE
        WHERE validade <= SYSDATE + 5;

    validade_bolsa c_estoque_alerta%ROWTYPE;
    
BEGIN
    OPEN c_estoque_alerta;

    FETCH c_estoque_alerta INTO validade_bolsa;

    WHILE c_estoque_alerta%FOUND LOOP
        DBMS_OUTPUT.PUT_LINE('ALERTA DE VENCIMENTO');
        DBMS_OUTPUT.PUT_LINE('Código:' || validade_bolsa.codigo);
        DBMS_OUTPUT.PUT_LINE('Componente:' || validade_bolsa.componente);
        DBMS_OUTPUT.PUT_LINE('Tipo:' || validade_bolsa.tipo_sanguineo);
        DBMS_OUTPUT.PUT_LINE('Volume:' || validade_bolsa.volume);
        DBMS_OUTPUT.PUT_LINE('Validade:' || validade_bolsa.validade);
        DBMS_OUTPUT.PUT_LINE('');

        FETCH c_estoque_alerta INTO validade_bolsa;
    END LOOP;

    CLOSE c_estoque_alerta;
END;