CREATE DATABASE estacionamento;

use estacionamento;

CREATE TABLE Endereco(
Id_Endereco INT(11) PRIMARY key,
Cep INT(11),
Cidade VARCHAR(20),
Bairro VARCHAR(20),
Rua VARCHAR(20),
 Numero INT(11),
Complemento INT(11)
);

CREATE TABLE Contato(
Id_Contato INT(11) PRIMARY key,
Fone VARCHAR (11),
Celular VARCHAR (11),
Email VARCHAR(50)
);

CREATE TABLE Veiculo(
Placa VARCHAR(8) PRIMARY KEY,
Cor VARCHAR(20),
Modelo VARCHAR(20) NOT NULL,
Ano INT(11)
);

CREATE TABLE Funcionario(
    Cpf Varchar(11) PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Data_nasc DATE NOT NULL,
    Sexo ENUM('F', 'M', 'I'),
    Fk_Contato INT(11),
    Fk_Endereco INT(11),
    FOREIGN KEY (Fk_Contato) REFERENCES Contato(Id_Contato),
    FOREIGN KEY (Fk_Endereco) REFERENCES Endereco(Id_Endereco)
);

CREATE TABLE Cliente(
    Cnh Varchar(10) PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Data_nasc DATE NOT NULL,
    Sexo ENUM('F', 'M', 'I'),
    Fk_Contato INT(11),
    Fk_Endereco INT(11),
    FOREIGN KEY (Fk_Contato) REFERENCES Contato(Id_Contato),
    FOREIGN KEY (Fk_Endereco) REFERENCES Endereco(Id_Endereco)
);
CREATE TABLE Estacionar(
Id_Estacionar INT(11) PRIMARY KEY,
Data_In DATE NOT NULL,
Data_Out DATE,
Vaga VARCHAR(10) NOT NULL,
Fk_Cliente VARCHAR (10),
Fk_Funcionario VARCHAR(11),
Fk_Veiculo VARCHAR(8),
FOREIGN KEY(Fk_Cliente) REFERENCES Cliente(Cnh),  
FOREIGN KEY(Fk_Funcionario) REFERENCES Funcionario(Cpf),
FOREIGN KEY(Fk_Veiculo) REFERENCES Veiculo(Placa)    
);
    
USE estacionamento;

INSERT INTO endereco(Id_Endereco, Cep, Cidade, Bairro, Rua, Numero, Complemento) 
VALUES 
('01', '64514575', 'Torres','Passo de Torres', 'Baiacu', '542', '994'), 
('02', '71412487', 'Gravatai','Rincao', 'Rua do Crack', '157', '013'), 
('03', '87431542', 'Cachoeirinha','Canarinho', 'Trafico', '741', '123');

use estacionamento;


INSERT INTO contato(Id_Contato, Celular, Email, Fone) 
VALUES 
('01', '987678976', 'ben10patati@gmail.com', '30746631'),
('02', '984578976', 'entidademaligna@gmail.com', '34326689'),
('03', '987578976', 'abencoado@gmail.com', '40028922'),
('04', '998266834', 'jairzinho@yahoo.com', '35145221'),
('05', '981259977', 'meucarro@hotmail.com', '38254189'),
('06', '993467786', 'souhorrivel@bol.com', '30421582')

USE estacionamento;

INSERT INTO cliente(Cnh, Nome, Data_nasc, Sexo, Fk_Contato, Fk_Endereco)
VALUES
('69482956990', 'Luciu','2000/03/11', 'M', '01', '01'),
('02316940667', 'Eduardo','1997/04/16', 'M', '02', '02'),
('93438858675', 'Matheus','1999/05/12', 'M', '03', '03')

USE estacionamento;

INSERT INTO funcionario(Cpf, Nome, Data_nasc, Sexo, Fk_Contato, Fk_Endereco)
VALUES
('61837027064', 'Junior','1999/08/26', 'M', '04', '01'),
('77171087042', 'Nathan','2000/03/27', 'M', '05', '02'),
('93438858675', 'Vitor','1999/07/08', 'M', '06', '03')

USE estacionamento;

INSERT INTO veiculo(Placa, Ano, Cor, Modelo, )
VALUES
('IYV9257', '1988', 'Preto','Chevette'),
('IMK1655', '1978', 'Cinza','Opala'),
('JCT4396', '1971', 'Branca','Variant')

USE estacionamento;

INSERT INTO estacionar(Id_Estacionar, Data_In, Data_Out, Vaga, Fk_Cliente, Fk_Funcionario, Fk_Veiculo)
VALUES
('01', '2020/01/17','2020/01/18', 'A1', '69482956990', '61837027064', 'IMK1655'),
('02', '2020/01/29','2020/02/15', 'B5', '93438858675', '77171087042', 'IYV9257'),
('03', '2020/02/22','2020/03/02', 'C4', '02316940667', '93438858675', 'JCT4396')