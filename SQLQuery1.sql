CREATE DATABASE ProjetoBd
GO

USE ProjetoBd
GO

CREATE TABLE Aluno
(
idaluno smallint NOT NULL,
nome varchar(40) NOT NULL,
sexo varchar(1) NOT NULL,
cpf varchar(12) NOT NULL,
dtnasc date NOT NULL,
matr varchar(11) NOT NULL,
email varchar(40) NULL,
endereco varchar(40) NOT NULL,
cidade varchar(40) NOT NULL,
bairro varchar(40) NOT NULL,
cep varchar(10) NOT NULL,
rua varchar(40) NOT NULL,
numero varchar(3) NOT NULL,
fone varchar(10) NULL,
CONSTRAINT PK_aluno PRIMARY KEY (idaluno),
CONSTRAINT CK_aluno_sexo CHECK (sexo = 'M' or sexo = 'F'),
CONSTRAINT AK_aluno_cpf UNIQUE (cpf),
CONSTRAINT AK_aluno_matr UNIQUE (matr),
);

CREATE TABLE FoneAluno
(
idfone smallint NOT NULL,
fone varchar(10)
CONSTRAINT PK_fonealuno_fone PRIMARY KEY (idfone)
);

CREATE TABLE Projeto
(
idprojeto smallint NOT NULL,
nome varchar(40) NOT NULL,
CONSTRAINT PK_projeto PRIMARY KEY (idprojeto),
CONSTRAINT AK_projeto_nome UNIQUE (nome),
);


CREATE TABLE Curso
(
idcurso smallint NOT NULL,
nome varchar(40) NOT NULL,
periodos smallint NOT NULL,
CONSTRAINT PK_curso PRIMARY KEY (idcurso),
CONSTRAINT AK_curso_cpf UNIQUE (nome),
);

CREATE TABLE Coordenador
(
idcoord smallint NOT NULL,
nome varchar(40) NOT NULL,
cpf varchar(12) NOT NULL,
CONSTRAINT PK_coord PRIMARY KEY (idcoord),
CONSTRAINT AK_coord_cpf UNIQUE (cpf)
);

CREATE TABLE Disciplina
(
iddisc smallint NOT NULL,
nome varchar(40) NOT NULL,
cargahor smallint NOT NULL,
CONSTRAINT PK_disc PRIMARY KEY (iddisc),
CONSTRAINT AK_disc_nome UNIQUE (nome),
);

CREATE TABLE Ppc
(
idppc smallint NOT NULL,
codigo varchar(10) NOT NULL,
CONSTRAINT PK_ppc PRIMARY KEY (idppc),
CONSTRAINT AK_codigo UNIQUE (codigo),
);

CREATE TABLE Departamento
(
iddepar smallint NOT NULL,
nome varchar(40) NOT NULL,
CONSTRAINT PK_depar PRIMARY KEY (iddepar),
CONSTRAINT AK_depar_nome UNIQUE (nome)
);

CREATE TABLE Professor
(
idprof smallint NOT NULL,
nome varchar(40) NOT NULL,
cpf varchar(12) NOT NULL,
sexo varchar(1) NOT NULL,
dtnasc date NOT NULL,
email varchar(40) NOT NULL,
CONSTRAINT PK_idprof PRIMARY KEY (idprof),
CONSTRAINT AK_professor_cpf UNIQUE (cpf),
CONSTRAINT CK_professor_sexo CHECK (sexo = 'M' or sexo = 'F')
);

CREATE TABLE FoneProfessor
(
idfoneprof smallint NOT NULL,
fone varchar(10) NOT NULL,
CONSTRAINT PK_idfoneprof PRIMARY KEY (idfoneprof)
);

CREATE TABLE Dependente
(
iddepen smallint NOT NULL,
nome varchar(40) NOT NULL,
cpf varchar(12) NOT NULL,
sexo varchar(1) NOT NULL,
dtnasc date NOT NULL,
CONSTRAINT PK_iddepen PRIMARY KEY (iddepen),
CONSTRAINT AK_dependente_cpf UNIQUE (cpf),
CONSTRAINT CK_dependente_sexo CHECK (sexo = 'M' or sexo = 'F')
);








