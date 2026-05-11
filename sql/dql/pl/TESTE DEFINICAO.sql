/**
 * Verifica se o hemocomponente inserido tem dado prazo válido em relação à validade
 * Joga exceção se não !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 */


/* ta errado . 
CREATE OR REPLACE TRIGGER ValidatePrazo
BEFORE UPDATE OR INSERT ON Hemocomponente FOR EACH ROW
DECLARE
    x INTEGER;
BEGIN
    x := 1; -- tbd
END ValidatePrazo;

CREATE OR REPLACE PACKAGE AuditoriaLote AS

    CREATE TABLE Lote_Audit (
        id NUMBER(256, 0),
        codigo_hemocomponente Lote.codigo_hemocomponente%TYPE,
        hemocentro_origem Lote.hemocentro_origem%TYPE,
        hemocentro_transferido Lote.hemocentro_transferido%TYPE,
        agencia_transferida Lote.agencia_transferida%TYPE,
        dia DATE,
        CONSTRAINT lote_audit_pkey PRIMARY KEY (id)
    );

    SEQUENCE lote_audit_seq INCREMENT BY 1 START WITH 1;

    CREATE OR REPLACE TRIGGER AuditTransferencia;

END AuditoriaLote;
*/

CREATE OR REPLACE PACKAGE AptidaoLib AS

    TYPE doencaRecord IS RECORD (
        nome Doencas_Triagem.DOENCA%TYPE,
        data_melhora Doencas_Triagem.DATA_MELHORA%TYPE,
        cronicidade Doencas_Triagem.CRONICA%TYPE
    );

    TYPE doencasTable IS TABLE OF doencaRecord%ROWTYPE
        INDEX BY BINARY_INTEGER;
    
    TYPE medicamentosTable IS TABLE OF Medicacoes_Triagem.MEDICAMENTO%TYPE
        INDEX BY BINARY_INTEGER;

    CURSOR doencasCursor(doencas doencasTable) IS SELECT * FROM doencas;

    CURSOR medicamentosCursor(medicamentos medicamentosTable) IS SELECT * FROM medicamentos;

    PROCEDURE GetIdade(cpf IN Pessoa.cpf%TYPE, idade OUT INTEGER);

    FUNCTION GetDoencas(cpf Doador.cpf%TYPE) RETURN doencasTable;

    FUNCTION GetMedicamentos(cpf Doador.cpf%TYPE) RETURN medicamentosTable;

    FUNCTION IsApto(cpf Doador.cpf%TYPE) RETURN BOOLEAN;

END AptidaoLib;
