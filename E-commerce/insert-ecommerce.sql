use Ecommerce;
show databases;
show tables;

-- Populando tabela cliente 
desc cliente;
insert into cliente values (1,'mariajose@gmail','PF','2015-01-01'),
                           (2,'joaojose@gmail','PJ','2015-01-01'),
                           (3,'anamaria@gmail','PF','2016-01-01'),
                           (4,'felipejose@gmail','PJ','2016-01-01'),
                           (5,'marianarosa@gmail','PF','2015-01-01'),
                           (6,'matheusjoao@gmail','PJ','2015-01-01');
select *from cliente;


-- Populando PF
desc pessoa_fisica;
insert into pessoa_fisica values (1,19028345670,'Maria José'),
                                  (3,12356789044,'Ana Maria'),
                                  (5,34567809866,'Mariana Rosa');
select * from pessoa_fisica;


-- Populando PJ
desc pessoa_juridica;
insert into pessoa_juridica values (2,12345678910112,'JJ Pneus LDTA'),
                                   (4,09876543211122,'FJ Advocacia'),
                                   (6,23456789012345,'MJ Festas');
select * from pessoa_juridica;

-- populando forma de pagamento

desc Forma_Pagamento;
insert into Forma_Pagamento values (2,1,'Cartão','tok_visa_998877665544'),
                                   (3,2,'Boleto','ID-bol_2026_99844'),
                                   (4,3,'Pix','B12345678202315201500asdfg12356'),
                                   (5,4,'Boleto','ID-bol_2026_99821'),
                                   (6,5,'Pix','E12345678202305201500asdfg12345'),
                                   (7,6,'Cartão','tok_visa_888877665577');

-- Populando Pedido
desc Pedido;
insert into Pedido values (8,1,'2026-02-02',150), -- Acrescentar a hora
                          (9,2,'2026-02-03',200),
                          (10,3,'2026-02-02',600),
                          (11,4,'2026-02-03',240),
                          (12,5,'2026-02-02',380),
                          (13,6,'2026-02-03',470);

select * from Pedido;

-- Populando entrega 
desc Entrega;
insert into Entrega values (14,8,'Processando',12345679),
                           (15,9,'Enviado',3456789),
                           (16,10,'Entregue',87878990),
                           (17,11,'Cancelado',45678900),
                           (18,12,'Em Trânsito',23234566),
                           (19,13,'Processando',12123455);
select * from Entrega;