CREATE OR REPLACE PACKAGE BODY AptidaoLib AS

    PROCEDURE GetIdade(cpf_pessoa IN Pessoa.cpf%TYPE, idade OUT INTEGER) IS
        data_nasc Pessoa.DATA_NASCIMENTO%TYPE;
    BEGIN
        SELECT P.data_nascimento INTO data_nasc 
        FROM Pessoa P WHERE P.cpf = cpf_pessoa;

        idade := FLOOR(MONTHS_BETWEEN(SYSDATE, data_nasc) / 12);
    END;

    PROCEDURE GetDoencas(cpf_doador Doador.cpf%TYPE, t_doencas OUT doencasTable, t_i IN OUT BINARY_INTEGER) IS
        CURSOR doencastriagemCursor(cpf_d Doador.cpf%TYPE) IS
            SELECT D.doenca, D.data_melhora, D.cronica
            FROM DOENCAS_TRIAGEM D INNER JOIN TRIA T ON D.codigo_triagem = T.codigo_triagem
            WHERE T.CPF_DOADOR = cpf_d;
    BEGIN
        FOR D IN doencastriagemCursor(cpf_doador) LOOP
            t_i := t_i + 1;
            t_doencas(t_i).nome := d.doenca;
            t_doencas(t_i).data_melhora := d.data_melhora;
            t_doencas(t_i).cronicidade := d.cronica;
        END LOOP;
    END;

    PROCEDURE GetMedicamentos(cpf_doador Doador.cpf%TYPE, t_medicamentos OUT medicamentosTable, t_i IN OUT BINARY_INTEGER) IS
        CURSOR medicamentostriagemCursor(cpf_d Doador.cpf%TYPE) IS
            SELECT M.medicamento, T.data_triagem
            FROM MEDICACOES_TRIAGEM M INNER JOIN TRIA T ON M.codigo_triagem = T.codigo_triagem
            WHERE T.CPF_DOADOR = cpf_d;
    BEGIN
        FOR M IN medicamentostriagemCursor(cpf_doador) LOOP
            t_i := t_i + 1;
            t_medicamentos(t_i).medicamento := m.medicamento;
            t_medicamentos(t_i).data_triagem := m.data_triagem;
        END LOOP;
    END;

    FUNCTION IsApto(cpf_doador Doador.cpf%TYPE) RETURN BOOLEAN IS
        CURSOR c_doencas(d doencasTable) IS
            SELECT * FROM TABLE (d);

        CURSOR c_medicamentos(m medicamentosTable) IS
            SELECT * FROM TABLE (m);

        t_doencas doencasTable;
        t_doencas_qtd BINARY_INTEGER := 1;
        doenca doencaRecord;

        t_medicamentos medicamentosTable;
        t_medicamentos_qtd BINARY_INTEGER := 1;
        medicamento medicacaoRecord;

        idade INTEGER;
        intervalo NUMBER(3,0);
        
        retorno BOOLEAN := TRUE;
    BEGIN
        APTIDAOLIB.GETDOENCAS(cpf_doador, t_doencas, t_doencas_qtd);
        APTIDAOLIB.GETMEDICAMENTOS(cpf_doador, t_medicamentos, t_medicamentos_qtd);
        APTIDAOLIB.GETIDADE(cpf_doador, idade);

        IF idade < 13 THEN
            retorno := FALSE;
        END IF;

        OPEN c_doencas(t_doencas);

        LOOP
            FETCH c_doencas INTO doenca;
            EXIT WHEN c_doencas%NOTFOUND;

            IF doenca.nome IN (
                'HIV/AIDS', 
                'Hepatite B', 
                'Hepatite C', 
                'Doença de Chagas', 
                'Malária', 
                'HTLV1', 
                'HTLV2', 
                'Hanseníase'
            ) OR (doenca.data_melhora IS NULL AND doenca.cronicidade = 'S')
            THEN
                retorno := FALSE;
                EXIT;
            END IF;
        END LOOP;

        CLOSE c_doencas;

        OPEN c_medicamentos(t_medicamentos);
        LOOP
            FETCH c_medicamentos INTO medicamento;
            EXIT WHEN c_medicamentos%NOTFOUND;

            intervalo := SYSDATE - medicamento.data_triagem;
            
            CASE
                WHEN intervalo <= 5 THEN
                    IF medicamento.medicamento IN ('Anti-inflamatórios', 'AAS', 'Diclofenaco') THEN
                        retorno := FALSE;
                        EXIT;
                    END IF;
                WHEN intervalo <= 15 THEN
                    IF medicamento.medicamento IN ('Antibióticos') THEN
                        retorno := FALSE;
                        EXIT;
                    END IF;
                WHEN intervalo <= 30 THEN
                    IF medicamento.medicamento IN ('Roacutan', 'Finasterida', 'Carbonato de Lítio') THEN
                        retorno := FALSE;
                        EXIT;
                    END IF;
                WHEN intervalo <= 180 THEN
                    IF medicamento.medicamento IN ('Dutasterida') THEN
                        retorno := FALSE;
                        EXIT;
                    END IF;
                WHEN intervalo <= 365 THEN
                    IF medicamento.medicamento IN ('Anabolizantes') THEN
                        retorno := FALSE;
                        EXIT;
                    END IF;
                ELSE 
                    IF medicamento.medicamento IN ('Etretinato', 'Tigason') THEN
                        retorno := FALSE;
                        EXIT;
                    END IF;
            END CASE;
            
        END LOOP;

        CLOSE c_medicamentos;

        return retorno;
    END;

END AptidaoLib;
/
