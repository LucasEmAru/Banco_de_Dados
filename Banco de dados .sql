CREATE DATABASE BDEscola
USE BDEscola

CREATE TABLE Escola(
  Escola_ID INT PRIMARY KEY,
  Nome VARCHAR (100),
  Endereco VARCHAR (100)
);

CREATE TABLE Professor(
  Professor_ID INT PRIMARY KEY,
  Nome VARCHAR (100),
  RF INT
);

CREATE TABLE Escola_Professor(
  Escola_ID INT FOREIGN KEY REFERENCES Escola(Escola_ID),
  Professor_ID INT FOREIGN KEY REFERENCES Professor(Professor_ID)
);

CREATE TABLE Materia(
 Materia_ID INT PRIMARY KEY,
 Nome VARCHAR (100),
 Descrição VARCHAR (100)
);

CREATE TABLE Professor_Materia(
 Professor_ID INT FOREIGN KEY REFERENCES Professor(Professor_ID),
 Materia_ID INT FOREIGN KEY REFERENCES Materia(Materia_ID)
);

CREATE TABLE Aluno(
 Aluno_ID INT PRIMARY KEY,
 Escola_ID INT FOREIGN KEY REFERENCES Escola(Escola_ID),
 Nome VARCHAR (100),
 RA VARCHAR (100) 
 );

 CREATE TABLE Aluno_Materia(
 Aluno_ID INT FOREIGN KEY REFERENCES Aluno(Aluno_ID),
 Materia_ID INT FOREIGN KEY REFERENCES Materia(Materia_ID)
 );

 INSERT INTO Escola VALUES (1,'SENAI', 'Escola de informatica');
 INSERT INTO Escola VALUES (2,'Escolinha', 'kids');
 INSERT INTO Professor VALUES (1,'Caique', '666');
 INSERT INTO Professor VALUES (2,'Joaquim', '999');
 INSERT INTO Escola_Professor VALUES (1,1);
 INSERT INTO Escola_Professor VALUES (2,1);


 SELECT * FROM Escola
 SELECT * FROM Professor
 SELECT * FROM Escola_Professor