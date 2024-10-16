# LojaProdutosBeleza

# Loja de Cosméticos - Sistema de Banco de Dados

Este projeto SQL cria e gerencia o banco de dados de uma loja fictícia de cosméticos. O sistema inclui tabelas para categorias de produtos, produtos, clientes, funcionários, vendas e detalhes das vendas, possibilitando a organização e consulta das informações de forma estruturada.

# Estrutura do Banco de Dados

💻 Banco de Dados:

LojaCosmeticos: O banco de dados principal para armazenar todas as informações da loja.


📚 Tabelas Criadas:


Categoria: Armazena as diferentes categorias de produtos disponíveis na loja, como Maquiagem e Cabelo.

Produto: Detalha os produtos da loja, incluindo nome, preço, estoque e a categoria correspondente.

Cliente: Registra informações dos clientes, como nome, e-mail e telefone.

Funcionario: Contém os dados dos funcionários, como nome, cargo e salário.

Venda: Guarda as informações das vendas realizadas, incluindo data, cliente, funcionário responsável e valor total.

DetalheVenda: Registra os detalhes de cada venda, como produtos vendidos, quantidade e preço unitário.


# Funcionalidades


Chaves Estrangeiras: As tabelas Produto, Venda e DetalheVenda utilizam chaves estrangeiras para garantir a integridade referencial entre as tabelas.

Inserção de Dados: Várias operações INSERT foram realizadas para popular as tabelas com dados de exemplo, como categorias de produtos, clientes, funcionários e detalhes das vendas.

Consultas: Comandos SELECT são usados para visualizar os dados inseridos.

Regras de Exclusão em Cascata: A tabela Produto inclui a regra ON DELETE CASCADE, para garantir que, ao excluir uma categoria, todos os produtos relacionados sejam automaticamente removidos.



# Como Usar


1 - Execute o script para criar o banco de dados LojaCosmeticos e as respectivas tabelas.

2 - Utilize as instruções INSERT para popular as tabelas com dados fictícios.

3 - Consulte os dados inseridos utilizando os comandos SELECT já fornecidos.

4- Modifique ou adicione novas operações conforme necessário para expandir o sistema de acordo com os requisitos do negócio.



# Exemplo de Consultas


Produtos por Categoria: Visualize todos os produtos que pertencem a uma categoria específica.

Vendas por Cliente: Consulte as vendas realizadas por determinado cliente, incluindo os produtos comprados e os valores totais.


Este sistema pode ser expandido e adaptado para outros tipos de comércios com pequenas modificações.


Essa descrição oferece um panorama completo do projeto, destacando as tabelas, as funcionalidades, e como o sistema foi projetado.






