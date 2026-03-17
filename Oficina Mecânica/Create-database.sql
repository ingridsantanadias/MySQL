create database OficinaMecanica;
use OficinaMecanica;



-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Identificacao VARCHAR(20) UNIQUE NOT NULL, -- CPF ou CNPJ
    Contato VARCHAR(15)
);

-- Tabela Veiculo
CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    Placa CHAR(7) UNIQUE NOT NULL,
    Modelo VARCHAR(45),
    Marca VARCHAR(45),
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Equipe de Mecânicos
CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY AUTO_INCREMENT,
    NomeEquipe VARCHAR(45)
);

-- Tabela Mecânico
CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Especialidade VARCHAR(45),
    idEquipe INT,
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
);

-- Tabela Ordem de Serviço (OS)
CREATE TABLE Ordem_Servico (
    idOS INT PRIMARY KEY AUTO_INCREMENT,
    DataEmissao DATETIME DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('Aguardando', 'Em análise', 'Executando', 'Finalizado', 'Cancelado') DEFAULT 'Aguardando',
    DataConclusao DATETIME,
    idVeiculo INT,
    idEquipe INT,
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
);

-- Tabela Serviços (Tabela de Referência de Mão de Obra)
CREATE TABLE Servico (
    idServico INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100),
    ValorHora DECIMAL(10,2)
);

-- Tabela Pecas
CREATE TABLE Peca (
    idPeca INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100),
    ValorUnitario DECIMAL(10,2)
);

-- Relacionamento N:M entre OS e Servico
CREATE TABLE OS_Servicos (
    idOS INT,
    idServico INT,
    HorasEstimadas INT,
    PRIMARY KEY (idOS, idServico),
    FOREIGN KEY (idOS) REFERENCES Ordem_Servico(idOS),
    FOREIGN KEY (idServico) REFERENCES Servico(idServico)
);

-- Relacionamento N:M entre OS e Peca
CREATE TABLE OS_Pecas (
    idOS INT,
    idPeca INT,
    Quantidade INT,
    PRIMARY KEY (idOS, idPeca),
    FOREIGN KEY (idOS) REFERENCES Ordem_Servico(idOS),
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca)
);

show tables;
