INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('50740000', 100, 'Avenida Central');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('50740010', 950, 'Avenida Central');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('50030230', 250, 'Rua das Flores');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('51020000', 50, 'Avenida do Sol');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('52011000', 120, 'Rua da Paz');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('53065010', 123, 'Rua dos Pássaros');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('51075020', 225, 'Avenida Alta');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('57015090', 190, 'Rua Senador José');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('57015090', 180, 'Rua Senador José');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('50745010', 305, 'Rua Alberto Câmara');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('52030080', 895, 'Rua da Praia');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('59170170', 250, 'Estrada da Batalha');
INSERT INTO ENDERECO (cep, numero, logradouro) 
VALUES ('59990180', 175, 'Rua Governador Roberto');


INSERT INTO CARGO (nome_cargo, setor, salario) 
VALUES ('Enfermeiro', 'Triagem', 4500.00);
INSERT INTO CARGO (nome_cargo, setor, salario) 
VALUES ('Médico', 'Coleta', 12000.00);
INSERT INTO CARGO (nome_cargo, setor, salario) 
VALUES ('Recepcionista', 'Atendimento', 2200.00);
INSERT INTO CARGO (nome_cargo, setor, salario) 
VALUES ('Biomédico', 'Fracionamento', 5800.00);
INSERT INTO CARGO (nome_cargo, setor, salario) 
VALUES ('Enfermeiro Chefe', 'Triagem', 6000.00);


INSERT INTO HEMOCOMPONENTE (codigo, componente, tipo_sanguineo, volume, validade, data_processamento) 
VALUES (1001, 'Hemácias', 'O+', 250, TO_DATE('2024-06-05', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO HEMOCOMPONENTE (codigo, componente, tipo_sanguineo, volume, validade, data_processamento) 
VALUES (1002, 'Plasma', 'A-', 150, TO_DATE('2025-05-02', 'YYYY-MM-DD'), TO_DATE('2024-05-02', 'YYYY-MM-DD'));
INSERT INTO HEMOCOMPONENTE (codigo, componente, tipo_sanguineo, volume, validade, data_processamento) 
VALUES (1003, 'Plaquetas', 'AB+', 50, TO_DATE('2024-05-07', 'YYYY-MM-DD'), TO_DATE('2024-05-02', 'YYYY-MM-DD'));
INSERT INTO HEMOCOMPONENTE (codigo, componente, tipo_sanguineo, volume, validade, data_processamento) 
VALUES (1004, 'Hemácias', 'A+', 250, TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD'));
INSERT INTO HEMOCOMPONENTE (codigo, componente, tipo_sanguineo, volume, validade, data_processamento) 
VALUES (1005, 'Plasma', 'O-', 150, TO_DATE('2025-07-12', 'YYYY-MM-DD'), TO_DATE('2024-07-12', 'YYYY-MM-DD'));


INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('11111111111', 'Ana', 'Silva', '50740010', 950, 'Apto 2301', 'F', TO_DATE('1985-04-12', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('22222222222', 'Carlos', 'Mendes', '59170170', 250, 'Casa', 'M', TO_DATE('1990-08-22', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('33333333333', 'Beatriz', 'Lima', '51020000', 50, 'Apto 101', 'F', TO_DATE('1995-11-05', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('45645645645', 'Paulo', 'Lima', '51020000', 50, 'Apto 101', 'M', TO_DATE('1996-12-03', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('44444444444', 'Diego', 'Costa', '52011000', 120, 'Casa', 'M', TO_DATE('1978-01-30', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('12312312312', 'Maria', 'Pereira', '53065010', 123, 'Apto 1204', 'F', TO_DATE('2000-07-17', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('12121212121', 'José', 'Limeira', '51075020', 225, 'Casa', 'M', TO_DATE('1981-03-27', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('12309812309', 'Iana', 'Pontes', '57015090', 190, 'Apto 802', 'F', TO_DATE('2007-01-01', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('98798798798', 'Ana', 'Santos', '57015090', 190, 'Apto 703', 'F', TO_DATE('1980-05-07', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('55555555555', 'Thiago', 'Duarte', '57015090', 180, 'Casa', 'M', TO_DATE('1990-08-15', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('66666666666', 'Lucas', 'Carneiro', '50745010', 305, 'Apto 002', 'M', TO_DATE('1995-02-20', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento)
VALUES ('82748273847', 'Clarissa', 'Aquino', '52030080', 895, 'Casa', 'F', TO_DATE('2002-03-26', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('12981298129', 'Teresa', 'Aquino', '52030080', 895, 'Casa', 'F', TO_DATE('1975-08-17', 'YYYY-MM-DD'));
INSERT INTO PESSOA (cpf, nome_principal, sobrenome, cep, numero, complemento, sexo, data_nascimento) 
VALUES ('32432432432', 'Lucas', 'Silva', '59990180', 175, 'Apto 501', 'M', TO_DATE('2005-12-25', 'YYYY-MM-DD'));


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
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero) 
VALUES ('45645645645', 81, 966664444);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('44444444444', 81, 955555555);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('12312312312', 81, 944446666);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('12121212121', 81, 933337777);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('12309812309', 82, 922228888);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('98798798798', 82, 911119999);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('55555555555', 82, 900000000);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('66666666666', 81, 987654321); 
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('66666666666', 81, 934215566); 
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('82748273847', 81, 991223344);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('82748273847', 81, 932221100);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('12981298129', 81, 981224455);
INSERT INTO TELEFONE_PESSOA (cpf_pessoa, ddd, numero)
VALUES ('12981298129', 81, 981226677);

INSERT INTO FUNCIONARIO (cpf, cpf_supervisor, cargo, turno, status, escolaridade, data_admissao) 
VALUES ('44444444444', NULL, 'Enfermeiro Chefe', 'Integral', 'Ativo', 'Superior', TO_DATE('2015-09-15', 'YYYY-MM-DD'));
INSERT INTO FUNCIONARIO (cpf, cpf_supervisor, cargo, turno, status, escolaridade, data_admissao) 
VALUES ('11111111111', NULL, 'Médico', 'Manhã', 'Ativo', 'Superior', TO_DATE('2020-01-15', 'YYYY-MM-DD'));
INSERT INTO FUNCIONARIO (cpf, cpf_supervisor, cargo, turno, status, escolaridade, data_admissao) 
VALUES ('22222222222', '44444444444', 'Enfermeiro', 'Tarde', 'Ativo', 'Superior', TO_DATE('2022-03-10', 'YYYY-MM-DD'));
INSERT INTO FUNCIONARIO (cpf, cpf_supervisor, cargo, turno, status, escolaridade, data_admissao) 
VALUES ('33333333333', '44444444444', 'Enfermeiro', 'Manhã', 'Ativo', 'Superior', TO_DATE('2021-01-01', 'YYYY-MM-DD'));
INSERT INTO FUNCIONARIO (cpf, cpf_supervisor, cargo, turno, status, escolaridade, data_admissao) 
VALUES ('32432432432', NULL, 'Recepcionista', 'Manhã', 'Ativo', 'Médio', TO_DATE('2025-01-15', 'YYYY-MM-DD'));
INSERT INTO FUNCIONARIO (cpf, cpf_supervisor, cargo, turno, status, escolaridade, data_admissao) 
VALUES ('12981298129', '11111111111', 'Biomédico', 'Integral', 'Ativo', 'Superior', TO_DATE('2010-02-10', 'YYYY-MM-DD'));

INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('33333333333', 'Recife', 'PE', 'O+', 'Maria Lima', 65.5, 1.68, 'Casado', '81966664444');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('44444444444', 'Olinda', 'PE', 'A-', 'Joana Costa', 80.0, 1.82, 'Casado', '81988880000');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('12121212121', 'Maceió', 'AL', 'O-', 'Severina Limeira', 75.0, 1.75, 'Casado', '81933337777');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('12309812309', 'Maceió', 'AL', 'AB-', 'Luciana Pontes', 52.5, 1.55, 'Solteiro', '82922228888');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('98798798798', 'Aracaju', 'SE', 'O+', 'Maria dos Santos', 68.0, 1.65, 'Casado', '82911119999');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('55555555555', 'Propriá', 'SE', 'A+', 'Adriana Duarte', 85.0, 1.80, 'Solteiro', '82900000000');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('66666666666', 'Recife', 'PE', 'B-', 'Carla Carneiro', 72.0, 1.78, 'Solteiro', '81987654321');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('82748273847', 'Olinda', 'PE', 'A-', 'Teresa Aquino', 60.0, 1.65, 'Solteiro', '81991223344');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('12312312312', 'Vitória de Santo Antão', 'PE', 'O+', 'Helena Pereira', 58.0, 1.62, 'Solteiro', '81944446666');
INSERT INTO DOADOR (cpf, naturalidade_municipio, naturalidade_estado, tipo_sanguineo, nome_mae, peso, altura, estado_civil, ctt_emergencia) 
VALUES ('45645645645', 'Recife', 'PE', 'O+', 'Rosana Lima', 88.0, 1.82, 'Casado', '81977773333');


INSERT INTO TELEFONE_HEMOCENTRO (cnpj_hemocentro, ddd, numero) 
VALUES ('12345678000199', 81, 933334444);
INSERT INTO TELEFONE_HEMOCENTRO (cnpj_hemocentro, ddd, numero) 
VALUES ('12345678000199', 81, 933335555);

INSERT INTO TELEFONE_AGENCIA (cnpj_agencia, ddd, numero) 
VALUES ('98765432000188', 81, 922225555);


INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 120, 80);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 110, 70);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 130, 85);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 120, 80);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 125, 82);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 140, 90);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 115, 75);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 120, 80);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 122, 78);
INSERT INTO TRIAGEM (codigo, pressao_sistolica, pressao_diastolica)
VALUES (seq_triagem.NEXTVAL, 190, 110);


INSERT INTO DOENCAS_TRIAGEM (codigo_triagem, doenca, data_melhora, cronica) 
VALUES (1, 'Dengue', TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'N');
INSERT INTO DOENCAS_TRIAGEM (codigo_triagem, doenca, data_melhora, cronica) 
VALUES (2, 'Rinite', TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'S');
INSERT INTO DOENCAS_TRIAGEM (codigo_triagem, doenca, data_melhora, cronica) 
VALUES (5, 'Rinite', TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'S');
INSERT INTO DOENCAS_TRIAGEM (codigo_triagem, doenca, data_melhora, cronica) 
VALUES (6, 'Gripe', TO_DATE('2025-06-13', 'YYYY-MM-DD'), 'N');
INSERT INTO DOENCAS_TRIAGEM (codigo_triagem, doenca, data_melhora, cronica) 
VALUES (9, 'Hipertensão', TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'S');


INSERT INTO MEDICACOES_TRIAGEM (codigo_triagem, medicamento, dose) 
VALUES (2, 'Loratadina', '10mg');
INSERT INTO MEDICACOES_TRIAGEM (codigo_triagem, medicamento, dose) 
VALUES (3, 'Ibuprofeno', '600mg');
INSERT INTO MEDICACOES_TRIAGEM (codigo_triagem, medicamento, dose) 
VALUES (5, 'Sertralina', '50mg');


INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (1, '33333333333', '12981298129', TO_DATE('2026-04-20', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (2, '45645645645', '11111111111', TO_DATE('2026-04-21', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (3, '12121212121', '32432432432', TO_DATE('2026-04-21', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (4, '12309812309', '12981298129', TO_DATE('2026-04-21', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (5, '98798798798', '32432432432', TO_DATE('2026-04-22', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (6, '55555555555', '32432432432', TO_DATE('2026-04-23', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (7, '66666666666', '44444444444', TO_DATE('2026-04-23', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (8, '82748273847', '44444444444', TO_DATE('2026-04-23', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (9, '12312312312', '12981298129', TO_DATE('2026-04-23', 'YYYY-MM-DD'));
INSERT INTO TRIA (codigo_triagem, cpf_doador, cpf_funcionario, data_triagem) 
VALUES (10, '44444444444', '32432432432', TO_DATE('2026-04-24', 'YYYY-MM-DD'));


INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('33333333333', TO_DATE('2026-04-21', 'YYYY-MM-DD'), 450, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('45645645645', TO_DATE('2026-04-21', 'YYYY-MM-DD'), 402, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('12121212121', TO_DATE('2026-04-21', 'YYYY-MM-DD'), 450, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('12309812309', TO_DATE('2026-04-21', 'YYYY-MM-DD'), 400, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('98798798798', TO_DATE('2026-04-22', 'YYYY-MM-DD'), 450, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('55555555555', TO_DATE('2026-04-23', 'YYYY-MM-DD'), 410, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('66666666666', TO_DATE('2026-04-23', 'YYYY-MM-DD'), 400, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('82748273847', TO_DATE('2026-04-23', 'YYYY-MM-DD'), 425, '12345678000199');
INSERT INTO DOACAO (cpf_doador, data_coleta, volume_coleta, hemocentro_processamento) 
VALUES ('12312312312', TO_DATE('2026-04-23', 'YYYY-MM-DD'), 410, '12345678000199');


INSERT INTO LOTE (codigo_hemocomponente, hemocentro_origem, hemocentro_transferido, agencia_transferida) 
VALUES (1001, '12345678000199', NULL, '98765432000188');
INSERT INTO LOTE (codigo_hemocomponente, hemocentro_origem, hemocentro_transferido, agencia_transferida) 
VALUES (1002, '12345678000199', NULL, NULL);
INSERT INTO LOTE (codigo_hemocomponente, hemocentro_origem, hemocentro_transferido, agencia_transferida) 
VALUES (1003, '12345678000199', NULL, '98765432000188');
INSERT INTO LOTE (codigo_hemocomponente, hemocentro_origem, hemocentro_transferido, agencia_transferida) 
VALUES (1004, '12345678000199', NULL, NULL);
INSERT INTO LOTE (codigo_hemocomponente, hemocentro_origem, hemocentro_transferido, agencia_transferida) 
VALUES (1005, '12345678000199', NULL, NULL);

COMMIT;