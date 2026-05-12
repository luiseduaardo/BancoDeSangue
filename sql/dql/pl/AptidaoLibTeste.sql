DECLARE
    CURSOR doadores IS
        SELECT D.cpf as cpf, (P.nome_principal || ' ' || P.sobrenome) as nome_completo
        FROM Pessoa P INNER JOIN Doador D ON D.cpf = P.cpf;
    
    b BOOLEAN;
    d doadores%ROWTYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- Testando AptidãoLib!!! ---');

    OPEN doadores;

    LOOP
        FETCH doadores INTO d;
        EXIT WHEN doadores%NOTFOUND;

        b := APTIDAOLIB.ISAPTO(d.cpf);
        IF b THEN
            DBMS_OUTPUT.PUT_LINE(d.nome_completo || ' pode doar sangue!');
        ELSE
            DBMS_OUTPUT.PUT_LINE(d.nome_completo || ' não pode doar sangue!');
        END IF;
    END LOOP;

    CLOSE doadores;
END;