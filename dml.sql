INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('50740000', 100, 'Avenida Central');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('50030230', 250, 'Rua das Flores');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('51020000', 50, 'Avenida do Sol');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('52011000', 120, 'Rua da Paz');


INSERT INTO CARGO (nome_cargo, setor, salario) 
VALUES ('Enfermeiro', 'Triagem', 4500.00);
INSERT INTO CARGO (nome_cargo, setor, salario) 
VALUES ('Médico', 'Coleta', 12000.00);


INSERT INTO HEMOCOMPONENTE (codigo, componente, tipo_sanguineo, volume, validade, data_processamento) 
VALUES (1001, 'Hemácias', 'O+', 250, TO_DATE('2024-06-05', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO HEMOCOMPONENTE (codigo, componente, tipo_sanguineo, volume, validade, data_processamento) 
VALUES (1002, 'Plasma', 'A-', 150, TO_DATE('2025-05-02', 'YYYY-MM-DD'), TO_DATE('2024-05-02', 'YYYY-MM-DD'));


INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('11111111111', 'Ana', 'Silva', '50740000', 100, 'Térreo', 'F', TO_DATE('1985-04-12', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('22222222222', 'Carlos', 'Mendes', '50030230', 250, 'Sala 2', 'M', TO_DATE('1990-08-22', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('33333333333', 'Beatriz', 'Lima', '51020000', 50, 'Apto 101', 'F', TO_DATE('1995-11-05', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('44444444444', 'Diego', 'Costa', '52011000', 120, 'Casa', 'M', TO_DATE('1988-01-30', 'YYYY-MM-DD'));


INSERT INTO HEMOCENTRO (cnpj, cep, numero, complemento, nome, capacidade) 
VALUES ('12345678000199', '50740000', 100, 'Térreo', 'Hemocentro Esperança', 500);


INSERT INTO AGENCIA (cnpj, cep, numero, complemento) 
VALUES ('98765432000188', '50030230', 250, 'Sala 2');


INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero) 
VALUES ('11111111111', 81, 999991111);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero) 
VALUES ('22222222222', 81, 988882222);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero) 
VALUES ('33333333333', 81, 977773333);


INSERT INTO FUNCIONARIO (cpf, cpf_supervisor, cargo, turno, status, escolaridade, data_admissao) 
VALUES ('11111111111', NULL, 'Médico', 'Manhã', 'Ativo', 'Superior', TO_DATE('2020-01-15', 'YYYY-MM-DD'));
INSERT INTO FUNCIONARIO (cpf, cpf_supervisor, cargo, turno, status, escolaridade, data_admissao) 
VALUES ('22222222222', '11111111111', 'Enfermeiro', 'Tarde', 'Ativo', 'Superior', TO_DATE('2022-03-10', 'YYYY-MM-DD'));


INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('33333333333', 'Recife', 'PE', 'O+', 'Maria Lima', 65.5, 1.68, 'Solteira', '81999990000');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('44444444444', 'Olinda', 'PE', 'A-', 'Joana Costa', 80.0, 1.82, 'Casado', '81988880000');


INSERT INTO TELEFONE_HEMOCENTRO (cnpj_hemocentro, ddd, numero) 
VALUES ('12345678000199', 81, 933334444);


INSERT INTO TELEFONE_AGENCIA (cnpj_agencia, ddd, numero) 
VALUES ('98765432000188', 81, 922225555);


INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica) 
VALUES (seq_triagem.NEXTVAL, 120, 80);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica) 
VALUES (seq_triagem.NEXTVAL, 130, 85);


INSERT INTO DOENCAS_TRIAGEM (codigo_triagem, doenca, data_melhora, cronica) 
VALUES (1, 'Dengue', TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'N');
INSERT INTO DOENCAS_TRIAGEM (codigo_triagem, doenca, data_melhora, cronica) 
VALUES (2, 'Rinite', TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'S');


INSERT INTO MEDICACOES_TRIAGEM (codigo_triagem, medicamento, dose) 
VALUES (2, 'Loratadina', '10mg');


INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (1, '33333333333', '22222222222', TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (2, '44444444444', '22222222222', TO_DATE('2024-05-02', 'YYYY-MM-DD'));


INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('33333333333', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 450, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('44444444444', TO_DATE('2024-05-02', 'YYYY-MM-DD'), 450, '12345678000199');


INSERT INTO LOTE (codigo_hemocomponente, hemocentro_origem, hemocentro_transferido, agencia_transferida) 
VALUES (1001, '12345678000199', NULL, '98765432000188');
INSERT INTO LOTE (codigo_hemocomponente, hemocentro_origem, hemocentro_transferido, agencia_transferida) 
VALUES (1002, '12345678000199', NULL, NULL);


COMMIT;