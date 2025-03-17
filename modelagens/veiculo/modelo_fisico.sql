-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
CodCliente int PRIMARY KEY,
nome varchar(100),
email varchar(100),
telefone int,
dataNasci date,
cep int,
estado varchar(3),
cidade varchar(100),
bairro varchar(100),
compl varchar(100),
num int,
rua varchar(100),
rg int,
cpf int
)

CREATE TABLE Carro (
CodCarro int PRIMARY KEY,
placa varchar(10),
marca varchar(50),
modelo varchar(50),
cor varchar(20),
porte varchar(50),
chassi varchar(100),
CodCliente int,
FOREIGN KEY(CodCliente) REFERENCES Cliente (CodCliente)
)

CREATE TABLE Ocorrencia (
CodOcorrencia int PRIMARY KEY,
data date,
hora int,
rua varchar(100),
bairro varchar(100),
cidade varchar(100),
descricao varchar(200),
CodCarro int,
CodTipo int,
FOREIGN KEY(CodCarro) REFERENCES Carro (CodCarro)
)

CREATE TABLE tipo (
CodTipo int PRIMARY KEY,
tipo varchar(50)
)

ALTER TABLE Ocorrencia ADD FOREIGN KEY(CodTipo) REFERENCES tipo (CodTipo)
