create database Ecommerce;
use Ecommerce;
-- Tabela Base
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE NOT NULL,
    tipo_cliente ENUM('PF', 'PJ') NOT NULL,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Especialização Pessoa Física
CREATE TABLE Pessoa_Fisica (
    idCliente INT PRIMARY KEY,
    cpf CHAR(11) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente) ON DELETE CASCADE
);

-- Especialização Pessoa Jurídica
CREATE TABLE Pessoa_Juridica (
    idCliente INT PRIMARY KEY,
    cnpj CHAR(14) UNIQUE NOT NULL,
    razao_social VARCHAR(100) NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente) ON DELETE CASCADE
);


-- Formas de Pagamento Cadastradas
CREATE TABLE Forma_Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT NOT NULL,
    tipo_pagamento ENUM('Cartão', 'Boleto', 'Pix') NOT NULL,
    detalhes_token VARCHAR(255), -- Para não salvar dados sensíveis diretamente
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

-- Pedidos e Entregas
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT NOT NULL,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    valor_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Entrega (
    id_entrega INT PRIMARY KEY AUTO_INCREMENT,
    idPedido INT UNIQUE NOT NULL,
    status_entrega ENUM('Processando', 'Enviado', 'Em Trânsito', 'Entregue', 'Cancelado') DEFAULT 'Processando',
    codigo_rastreio VARCHAR(50) UNIQUE,
    -- data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);
