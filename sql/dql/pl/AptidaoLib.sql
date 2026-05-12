/**
 * Pacote que tem procedimentos utilitários para verificar se um paciente é apto para doar sangue ou não.
 *
 * Usa:
 * - records
 * - estrutura de dados do tipo table
 * - bloco anônimo (para testar)
 * - procedure
 * - function
 * - %type
 * - if, elsif
 * - case, when
 * - loop exit when
 * - for in loop
 * - select into
 * - cursor
 * - parametros in, out, in out
 * - package
 * - package body
 */
CREATE OR REPLACE PACKAGE AptidaoLib AS

    TYPE doencaRecord IS RECORD (
        nome Doencas_Triagem.DOENCA%TYPE,
        data_melhora Doencas_Triagem.DATA_MELHORA%TYPE,
        cronicidade Doencas_Triagem.CRONICA%TYPE
    );

    TYPE medicacaoRecord IS RECORD (
        medicamento Medicacoes_Triagem.MEDICAMENTO%TYPE,
        data_triagem Tria.DATA_TRIAGEM%TYPE
    );

    TYPE doencasTable IS TABLE OF doencaRecord
        INDEX BY BINARY_INTEGER;
    
    TYPE medicamentosTable IS TABLE OF medicacaoRecord
        INDEX BY BINARY_INTEGER;
        
    PROCEDURE GetIdade(cpf_pessoa IN Pessoa.cpf%TYPE, idade OUT INTEGER);

    PROCEDURE GetDoencas(cpf_doador Doador.cpf%TYPE, t_doencas OUT doencasTable, t_i IN OUT BINARY_INTEGER);

    PROCEDURE GetMedicamentos(cpf_doador Doador.cpf%TYPE, t_medicamentos OUT medicamentosTable, t_i IN OUT BINARY_INTEGER);

    FUNCTION IsApto(cpf_doador Doador.cpf%TYPE) RETURN BOOLEAN;

END AptidaoLib;
/
