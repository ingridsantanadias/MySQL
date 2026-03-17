# 🛠️ Sistema de Gerenciamento de Oficina Mecânica
Este repositório contém o desafio de projeto para o módulo de Modelagem de Dados e SQL. O objetivo foi construir um esquema lógico e a implementação funcional de um banco de dados para o contexto de uma oficina mecânica, cobrindo desde a recepção do veículo até a gestão da Ordem de Serviço (OS).

# 📌 Contexto do Desafio
* O projeto simula o fluxo de trabalho de uma oficina, onde:
* Clientes trazem seus Veículos.
* Uma Equipe de Mecânicos avalia o problema e gera uma Ordem de Serviço (OS).
* A OS possui um valor total composto pela soma da Mão de Obra (tabela de referência de serviços) e das Peças utilizadas.
* O acompanhamento é feito através de diferentes status (Aguardando, Executando, Finalizado).

# 📌 Esquema Lógico
* O modelo foi estruturado visando a integridade referencial e a normalização de dados. Os principais relacionamentos incluem:
* 1:N entre Cliente e Veículo.
* 1:N entre Equipe e Mecânicos.
* N:M (Muitos para Muitos) entre Ordem de Serviço e Peças/Serviços, resolvido através de tabelas associativas (OS_Pecas e OS_Servicos).

# 🚀 Tecnologias
* MySQL: Engine de banco de dados.
* Modelo ER: Para abstração do domínio.
* Script SQL: Criação, inserção e consulta de dados.

# 🔍 Consultas Implementadas (Queries)
* O script de consultas foi desenvolvido para responder perguntas reais de negócio, utilizando:
* SELECT / WHERE: Filtros específicos de veículos e status.
* Atributos Derivados: Cálculos em tempo real de valores totais de serviços.
* ORDER BY: Organização de custos e produtividade.
* GROUP BY / HAVING: Agrupamento de dados por equipes com filtros de desempenho.
* JOINS: Conexão entre múltiplas tabelas para gerar relatórios completos (Cliente -> Veículo -> OS -> Equipe).
