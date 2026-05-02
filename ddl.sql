CREATE TABLE Endereco (
    cep VARCHAR2 (8),
    numero INTEGER,
    complemento VARCHAR2 (30),
    logradouro VARCHAR2 (50),

    CONSTRAINT endereco_pkey PRIMARY KEY (cep, numero, complemento)
);

CREATE TABLE Pessoa (
    cpf VARCHAR2 (11),
    nome_principal VARCHAR2 (30),
    sobrenome VARCHAR2 (30),
    cep VARCHAR2 (8),
    numero INTEGER,
    complemento VARCHAR2 (30),
    sexo VARCHAR2 (1),
    data_nascimento DATE,

    CONSTRAINT pessoa_pkey PRIMARY KEY (cpf),
    CONSTRAINT pessoa_fkey FOREIGN KEY (cep, numero, complemento) REFERENCES Endereco(cep, numero, complemento),

    CONSTRAINT sexo_check CHECK (sexo in ('M', 'F'))
);

CREATE TABLE Telefone_Pessoa (
    cpf_pessoa VARCHAR2 (11),
    ddd NUMBER (2, 0), -- 2 dígitos, 0 dígitos decimais
    numero NUMBER (9, 0), -- idem

    CONSTRAINT telefonepessoa_pkey PRIMARY KEY (cpf_pessoa, ddd, numero),
    CONSTRAINT telefonepessoa_fkey FOREIGN KEY (cpf_pessoa) REFERENCES Pessoa(cpf),

    CONSTRAINT ddd_check CHECK (ddd > 10), -- DDDs vão de 11 a 99
    CONSTRAINT numero_check CHECK (numero >= 100000000) -- evita números que começam com 0
);

CREATE TABLE Cargo (
    nome_cargo VARCHAR2 (20),
    setor VARCHAR2 (20),
    salario FLOAT,

    CONSTRAINT cargo_pkey PRIMARY KEY (nome_cargo)
);

CREATE TABLE Funcionario (
    cpf VARCHAR2 (11),
    cpf_supervisor VARCHAR2 (11),
    cargo VARCHAR2 (20),
    turno VARCHAR2 (10),
    status VARCHAR2 (10),
    escolaridade VARCHAR2 (20),
    data_admissao DATE,

    CONSTRAINT funcionario_pkey PRIMARY KEY (cpf),
    CONSTRAINT funcionario_fkey1 FOREIGN KEY (cpf) REFERENCES Pessoa(cpf),
    CONSTRAINT funcionario_fkey2 FOREIGN KEY (cpf_supervisor) REFERENCES Funcionario(cpf),
    CONSTRAINT funcionario_fkey3 FOREIGN KEY (cargo) REFERENCES Cargo(nome_cargo)
);

CREATE TABLE Doador (
    cpf VARCHAR2 (11),
    naturalidade_municipio VARCHAR2 (30),
    naturalidade_estado VARCHAR2 (20),
    tipo_sanguineo VARCHAR2 (3),
    nome_mae VARCHAR2 (50),
    peso FLOAT,
    altura FLOAT,
    estado_civil VARCHAR2 (15),
    ctt_emergencia VARCHAR2 (15),

    CONSTRAINT doador_pkey PRIMARY KEY (cpf),
    CONSTRAINT doador_fkey FOREIGN KEY (cpf) REFERENCES Pessoa(cpf),

    CONSTRAINT check_tipo_sanguineo CHECK (abo IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'))
);

CREATE TABLE Triagem (
    codigo INTEGER,
    pressao_sistolica NUMBER (3),
    pressao_diastolica NUMBER (3),

    CONSTRAINT triagem_pkey PRIMARY KEY (codigo),
    CONSTRAINT check_pressao CHECK (pressao_sistolica > pressao_diastolica)
);

CREATE TABLE Doencas_Triagem (
    codigo_triagem INTEGER,
    doenca VARCHAR2 (30),
    data_melhora DATE,
    cronica VARCHAR (1),

    CONSTRAINT doencas_triagem_pkey PRIMARY KEY (codigo_triagem, doenca, data_melhora, cronica),
    CONSTRAINT doencas_triagem_fkey FOREIGN KEY (codigo_triagem) REFERENCES Triagem(codigo),

    CONSTRAINT bool_cronica CHECK (cronica in ('S', 'N'))
);

CREATE TABLE Medicacoes_Triagem (
    codigo_triagem INTEGER,
    medicamento VARCHAR2 (50),
    dose VARCHAR2 (30),

    CONSTRAINT medicacoes_triagem_pkey PRIMARY KEY (codigo_triagem, medicamento, dose),
    CONSTRAINT medicacoes_triagem_fkey FOREIGN KEY (codigo_triagem) REFERENCES Triagem(codigo)
);

CREATE TABLE Tria (
    codigo_triagem INTEGER,
    cpf_doador VARCHAR2 (11),
    cpf_funcionario VARCHAR2 (11),
    data_triagem DATE,

    CONSTRAINT tria_pkey PRIMARY KEY (codigo_triagem),
    CONSTRAINT tria_fkey1 FOREIGN KEY (codigo_triagem) REFERENCES Triagem(codigo),
    CONSTRAINT tria_fkey2 FOREIGN KEY (cpf_doador) REFERENCES Doador(cpf),
    CONSTRAINT tria_fkey3 FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario(cpf)
);

CREATE TABLE Hemocentro (
    cnpj VARCHAR2 (14),
    cep VARCHAR2 (8),
    numero INTEGER,
    complemento VARCHAR2 (30),
    nome VARCHAR2 (50),
    capacidade INTEGER,

    CONSTRAINT hemocentro_pkey PRIMARY KEY (cnpj),
    CONSTRAINT hemocentro_fkey FOREIGN KEY (cep, numero, complemento) REFERENCES Endereco(cep, numero, complemento)
);

CREATE TABLE Doacao (
    cpf_doador VARCHAR2 (11),
    data_coleta DATE,
    volume_coleta INTEGER,
    hemocentro_processamento VARCHAR2 (14),

    CONSTRAINT doacao_pkey PRIMARY KEY (cpf_doador, data_coleta),
    CONSTRAINT doacao_fkey1 FOREIGN KEY (cpf_doador) REFERENCES Doador(cpf),
    CONSTRAINT doacao_fkey2 FOREIGN KEY (hemocentro_processamento) REFERENCES Hemocentro(cnpj)
);

CREATE TABLE Telefone_Hemocentro(
    cnpj_hemocentro VARCHAR2 (14),
    ddd NUMBER (2, 0),
    numero NUMBER (9, 0),

    CONSTRAINT telefone_hemocentro_pkey PRIMARY KEY (cnpj_hemocentro, ddd, numero),
    CONSTRAINT telefone_hemocentro_fkey FOREIGN KEY (cnpj_hemocentro) REFERENCES Hemocentro(cnpj)

    CONSTRAINT ddd_check CHECK (ddd > 10), -- DDDs vão de 11 a 99
    CONSTRAINT numero_check CHECK (numero >= 100000000) -- evita números que começam com 0
);

CREATE TABLE Hemocomponente (
    codigo INTEGER,
    componente VARCHAR2 (20),
    tipo_sanguineo VARCHAR2 (3),
    volume NUMBER,
    validade DATE,
    data_processamento DATE,

    CONSTRAINT hemocomponente_pkey PRIMARY KEY (codigo),

    CONSTRAINT tipo_sanguineo_abo CHECK (tipo_sanguineo IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'))
);

CREATE TABLE Agencia (
    cnpj VARCHAR2(14),
    cep VARCHAR2 (8),
    numero NUMBER,
    complemento VARCHAR2 (30),

    CONSTRAINT agencia_pkey PRIMARY KEY (cnpj),
    CONSTRAINT agencia_fkey FOREIGN KEY (cep, numero, complemento) REFERENCES Endereco(cep, numero, complemento)
);

CREATE TABLE Telefone_Agencia(
    cnpj_agencia VARCHAR2 (14),
    ddd NUMBER (2, 0),
    numero NUMBER (9, 0),

    CONSTRAINT telefone_agencia_pkey PRIMARY KEY (cnpj_agencia, ddd, numero),
    CONSTRAINT telefone_agencia_fkey FOREIGN KEY (cnpj_agencia) REFERENCES Agencia(cnpj)

    CONSTRAINT ddd_check CHECK (ddd > 10), -- DDDs vão de 11 a 99
    CONSTRAINT numero_check CHECK (numero >= 100000000) -- evita números que começam com 0
);

CREATE TABLE Lote (
    codigo_hemocomponente INTEGER,
    hemocentro_origem VARCHAR2 (14),
    hemocentro_transferido VARCHAR2 (14),
    agencia_transferida VARCHAR2 (14),

    CONSTRAINT lote_pkey PRIMARY KEY (codigo_hemocomponente),
    CONSTRAINT lote_fkey1 FOREIGN KEY (codigo_hemocomponente) REFERENCES Hemocomponente(codigo),
    CONSTRAINT lote_fkey2 FOREIGN KEY (hemocentro_origem) REFERENCES Hemocentro(cnpj),
    CONSTRAINT lote_fkey3 FOREIGN KEY (hemocentro_transferido) REFERENCES Hemocentro(cnpj),
    CONSTRAINT lote_fkey4 FOREIGN KEY (agencia_transferida) REFERENCES Agencia(cnpj)
);