# 🗄️ Guia de Estudos: MySQL & Banco de Dados Relacionais
* Este repositório é dedicado ao estudo e prática da linguagem SQL, utilizando o MySQL como banco de dados principal. Aqui, exploro desde a criação de estruturas até consultas complexas e lógica de manipulação de dados.

# 🚀 Estrutura da Linguagem SQL
* A linguagem é dividida em subconjuntos que organizam como interagimos com os dados:
* DDL (Data Definition Language): Comandos para definir e modificar a estrutura do banco, como CREATE, DROP, ALTER e RENAME.
* DML (Data Manipulation Language): Focado no consumo e modificação das linhas de dados: INSERT, UPDATE, DELETE e MERGE.
* DQL (Data Query Language): Especializado em recuperação de informações através do comando SELECT.
* DCL (Data Control Language): Controle de acessos e privilégios com GRANT e REVOKE.

# 📂 Organização de Conteúdo1. 
* Tipos de Dados e AtributosTrabalho com diferentes formatos de armazenamento para garantir eficiência:
* Caracteres: CHAR (fixo), VARCHAR (variável) e tipos de texto como LONGTEXT.
* Numéricos: INT, SMALLINT, DECIMAL e variações UNSIGNED.
* Temporais: DATE, DATETIME, TIMESTAMP, entre outros.
* Constraints (Restrições de Integridade)Implementação de regras para garantir a confiabilidade dos dados:
* PK & FK: Chaves primárias e estrangeiras para relacionamentos.
* CHECK: Validação de domínios e regras de negócio (ex: Salário > 2000).
* UNIQUE & NOT NULL: Garantia de nomes únicos e preenchimento obrigatório.Referential
* Triggered Action: Comportamentos como ON UPDATE CASCADE e ON DELETE SET NULL.
* Consultas e Lógica AvançadaOperadores de Conjunto:
* Uso de UNION, UNION ALL para combinar resultados e lógica de INTERSECT e EXCEPT.
* Consultas Aninhadas (Nested Queries): Uso de IN, EXISTS e subqueries para filtros complexos.
* Lógica Condicional: Uso de CASE WHEN para transformações de dados em tempo real nas consultas.

# 🧠 Conceitos de Modelagem
* O repositório também reflete o entendimento da teoria por trás dos bancos de dados:
* Modelagem ER (Entidade Relacionamento): Estruturação lógica antes da implementação.
* Classificação de Atributos: Distinção entre atributos simples, compostos, monovalorados e derivados (como cálculos de idade).
* Alias (AS): Uso de apelidos para melhorar a legibilidade de tabelas e colunas calculadas.

# 🛠️ Tecnologias Utilizadas
* Engine: MySQL.

