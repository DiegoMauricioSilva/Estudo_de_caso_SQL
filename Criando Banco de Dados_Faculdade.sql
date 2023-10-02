-- Criando Banco de Dados
CREATE DATABASE Faculdade;

-- Validando criação do Banco de Dados
SHOW DATABASES;

-- Selecionando Banco de Dados Faculdade
USE Faculdade;

-- Criando tabelas
CREATE TABLE Aluno (
    idAluno INT PRIMARY KEY NOT NULL,
    matricula varchar(10) NOT NULL,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Disciplina (
    idDisciplina INT PRIMARY KEY NOT NULL,
    nome varchar(50) NOT NULL,
    cargaHoraria INT NOT NULL
);

CREATE TABLE Historico (
    idAluno INT NOT NULL,
    idDisciplina INT NOT NULL,
    nota float NOT NULL,
    dataHistorico DATE NOT NULL,
    FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);

CREATE TABLE Curso (
    idCurso INT PRIMARY KEY NOT NULL,
    nome varchar(50)
);

CREATE TABLE AlunoCurso (
    idAluno INT NOT NULL,
    idCurso INT NOT NULL,
    anoEntrada INT NOT NULL,
    FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
    FOREIGN KEY (idCurso) REFERENCES Curso(idCurso) 
);

CREATE TABLE Grade (
    idGrade INT PRIMARY KEY NOT NULL,
    idCurso INT NOT NULL,
    ano INT NOT NULL,
    cargaHorariaTotal INT NOT NULL,
    FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);

CREATE TABLE GradeDisciplina (
    idGrade INT NOT NULL,
    idDisciplina INT NOT NULL,
    FOREIGN KEY (idGrade) REFERENCES Grade(idGrade),
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);

-- Validando criação das tabelas
SHOW TABLES;
