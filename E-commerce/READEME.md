# 📊 E-commerce Data Management System
* Este projeto consiste na modelagem e implementação de um banco de dados relacional para um sistema de e-commerce simplificado. 
* O foco principal foi a estruturação de tabelas para gestão de clientes (PF/PJ), métodos de pagamento seguros e controle de pedidos.



# 🚀 Tecnologias Utilizadas
* Banco de Dados: MySQL
* Linguagem: SQL (Structured Query Language)
* Conceitos: Normalização de Dados, Segurança (Tokenização), Relacionamentos (1:N) e Integridade Referencial.





# 🏗️ Estrutura do Banco de Dados
* O projeto é composto por três tabelas principais, relacionadas para garantir a consistência dos dados:
* Cliente: Gerencia perfis de Pessoas Físicas e Jurídicas.
* Forma_Pagamento: Armazena tokens de pagamento (Cartão, Boleto e Pix), evitando o armazenamento de dados sensíveis brutos.
* Pedido: Registra as transações financeiras vinculadas aos clientes.
* Entrega: Registra o andamento do pedido do cliente.
* PF e PJ: Pessoa físca e jurídica.
  
