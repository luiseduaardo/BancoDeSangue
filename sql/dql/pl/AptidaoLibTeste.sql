DECLARE
    CURSOR doadores IS
        SELECT D.cpf as cpf, (P.nome_principal || ' ' || P.sobrenome) as nome_completo
        FROM Pessoa P INNER JOIN Doador D ON D.cpf = P.cpf;
    
    b BOOLEAN;
    d_cpf Doador.CPF%TYPE;
    d_nome Pessoa.nome_principal%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- Testando AptidãoLib!!! ---');

    OPEN doadores;

    LOOP
        FETCH doadores INTO d_cpf, d_nome;
        EXIT WHEN doadores%NOTFOUND;

        b := APTIDAOLIB.ISAPTO(d_cpf);
        IF b THEN
            DBMS_OUTPUT.PUT_LINE(d_nome || ' pode doar sangue!');
        ELSE
            DBMS_OUTPUT.PUT_LINE(d_nome || ' não pode doar sangue!');
        END IF;
    END LOOP;

    CLOSE doadores;
END;