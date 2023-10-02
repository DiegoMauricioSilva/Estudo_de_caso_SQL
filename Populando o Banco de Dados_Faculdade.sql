-- Criando Banco de Dados
CREATE DATABASE Faculdade;

-- Criando tabelas
CREATE TABLE Aluno (
    idAluno INT PRIMARY KEY NOT NULL,
    matricula varchar(10) NOT NULL,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Historico (
    idAluno INT KEY NOT NULL,
    idDisciplina INT NOT NULL,
    nota float NOT NULL,
    dataHistorico DATE NOT NULL,
    FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);

CREATE TABLE Disciplina (
    idDisciplina INT PRIMARY KEY NOT NULL,
    nome varchar(50) NOT NULL,
    cargaHoraria INT NOT NULL,
);

CREATE TABLE AlunoCurso (
    idAluno INT NOT NULL,
    idCurso INT NOT NULL,
    anoEntrada INT NOT NULL,
    FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
    FOREIGN KEY (idCurso) REFERENCES Curso(idCurso) 
);

CREATE TABLE Curso (

);

CREATE TABLE Grade (

);

CREATE TABLE GradeDsiciplina (

);
