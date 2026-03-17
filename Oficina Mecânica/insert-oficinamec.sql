-- Inserindo Clientes
INSERT INTO Cliente (Nome, Identificacao, Contato) VALUES 
('Ingrid Santana', '12345678901', '8199999999'),
('Oficina do João PJ', '12345678000199', '8133334444');

-- Inserindo Veículos
INSERT INTO Veiculo (Placa, Modelo, Marca, idCliente) VALUES 
('ABC1D23', 'Civic', 'Honda', 1),
('XYZ9A88', 'Uno', 'Fiat', 2);

-- Inserindo Equipes e Mecânicos
INSERT INTO Equipe (NomeEquipe) VALUES ('Equipe Alpha'), ('Equipe Beta');
INSERT INTO Mecanico (Nome, Especialidade, idEquipe) VALUES 
('Carlos Silva', 'Motor', 1),
('Ana Souza', 'Elétrica', 2);

-- Inserindo Serviços e Peças
INSERT INTO Servico (Descricao, ValorHora) VALUES ('Troca de Óleo', 50.00), ('Revisão Motor', 150.00);
INSERT INTO Peca (Descricao, ValorUnitario) VALUES ('Filtro de Óleo', 35.00), ('Óleo 5W30', 45.00);

-- Criando uma OS
INSERT INTO Ordem_Servico (idVeiculo, idEquipe, Status) VALUES (1, 1, 'Executando');
INSERT INTO OS_Servicos (idOS, idServico, HorasEstimadas) VALUES (1, 1, 2);
INSERT INTO OS_Pecas (idOS, idPeca, Quantidade) VALUES (1, 1, 1), (1, 2, 4);