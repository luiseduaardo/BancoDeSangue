CREATE OR REPLACE PACKAGE AptidaoLib AS

    TYPE doencaRecord IS RECORD (
        nome Doencas_Triagem.DOENCA%TYPE,
        data_melhora Doencas_Triagem.DATA_MELHORA%TYPE,
        cronicidade Doencas_Triagem.CRONICA%TYPE
    );

    TYPE doencasTable IS TABLE OF doencaRecord
        INDEX BY BINARY_INTEGER;

    --CURSOR doencasCursor(doencas doencasTable) IS SELECT * FROM doencas;

    PROCEDURE GetIdade(cpf_pessoa IN Pessoa.cpf%TYPE, idade OUT INTEGER);

    FUNCTION GetDoencas(cpf_doador Doador.cpf%TYPE) RETURN doencasTable;

END AptidaoLib;
/

CREATE OR REPLACE PACKAGE BODY AptidaoLib AS

    --CURSOR doencasCursor(doencas doencasTable) IS SELECT * FROM doencas;

    PROCEDURE GetIdade(cpf_pessoa IN Pessoa.cpf%TYPE, idade OUT INTEGER) IS
        data_nasc Pessoa.DATA_NASCIMENTO%TYPE;
    BEGIN
        SELECT P.data_nascimento INTO data_nasc 
        FROM Pessoa P WHERE P.cpf = cpf_pessoa;

        idade := FLOOR(MONTHS_BETWEEN(SYSDATE, data_nasc) / 12);
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(idade, '99'));
    END;


    FUNCTION GetDoencas(cpf_doador Doador.cpf%TYPE) RETURN doencasTable IS
        CURSOR doencastriagemCursor(cpf_d Doador.cpf%TYPE) IS
            SELECT D.doenca, D.data_melhora, D.cronica
            FROM DOENCAS_TRIAGEM D INNER JOIN TRIA T ON D.codigo_triagem = T.codigo_triagem
            WHERE T.CPF_DOADOR = cpf_d;

        retorno doencasTable;
        indice_doencas INTEGER := 1;
    BEGIN
        FOR r IN doencastriagemCursor(cpf_doador) LOOP
            indice_doencas := indice_doencas + 1;
            retorno(indice_doencas).nome := r.doenca;
            retorno(indice_doencas).data_melhora := r.data_melhora;
            retorno(indice_doencas).cronicidade := r.cronica;
        END LOOP;

        RETURN retorno;
    END;

END AptidaoLib;
/

DECLARE
    t AptidaoLib.doencasTable;
BEGIN
    t := APTIDAOLIB.GETDOENCAS('33333333333');
END;
