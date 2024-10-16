-- Criação do banco de dados
CREATE DATABASE LojaCosmeticos;
USE LojaCosmeticos;

-- Tabela de Categorias de Produtos
CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL
);

-- Tabela de Produtos
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

-- Inserindo Categorias
INSERT INTO Categoria (nome_categoria) VALUES
('Maquiagem'),
('Cabelo');

-- Inserindo Produtos
INSERT INTO Produto (nome_produto, preco, estoque, id_categoria) VALUES
('Batom Vermelho', 25.90, 50, 1),
('Máscara de Cílios', 45.50, 30, 1),
('Shampoo Nutritivo', 19.90, 100, 2),
('Condicionador Hidratante', 22.50, 80, 2);

SELECT * FROM Produto;

-- Apagar o banco de dados (se já existir)
DROP DATABASE IF EXISTS LojaCosmeticos;
-- Criar o banco de dados novamente
CREATE DATABASE LojaCosmeticos;
-- Usar o banco de dados
USE LojaCosmeticos;

-- Criação da Tabela de Categorias
CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL
);

-- Criação da Tabela de Produtos
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    -- Criação da chave estrangeira
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria)
        REFERENCES Categoria(id_categoria)
        ON DELETE CASCADE
);


-- Tabela de Clientes
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(100) NOT NULL,
    telefone_cliente VARCHAR(15)
);

INSERT INTO Cliente (nome_cliente, email_cliente, telefone_cliente) VALUES
('Maria Silva', 'maria.silva@email.com', '999991234'),
('Larissa Santos', 'larissa.santos@email.com', '945795678'),
('Leticia Bacellar', 'leticiabacellar@email.com', '990761534'),
('Bruna Nascimento', 'brunanascimento@email.com', '945795078'),
('João Souza', 'joao.souza@email.com', '984675478'),
('Felipe Aparecido', 'felipeaparecido@email.com', '956785878');

SELECT * FROM Cliente;

-- Tabela de Funcionários
CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome_funcionario VARCHAR(100) NOT NULL,
    cargo_funcionario VARCHAR(50),
    salario DECIMAL(10, 2)
);

-- Inserindo Funcionários
INSERT INTO Funcionario (nome_funcionario, cargo_funcionario, salario) VALUES
('Ana Pereira', 'Vendedora', 2000.00),
('Carlos Gomes', 'Gerente', 3500.00),
('Ana clara Pereira', 'Analista', 4000.00),
('Lais Andrade', 'Vendedora', 2000.00),
('Giovanna Marcal', 'Analista', 4000.00),
('Laylia Ferreira', 'Gestora', 3900.00);

SELECT * FROM Funcionario;

-- Tabela de Vendas
CREATE TABLE Venda (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE NOT NULL,
    id_cliente INT,
    id_funcionario INT,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

-- Inserindo Vendas
INSERT INTO Venda (data_venda, id_cliente, id_funcionario, valor_total) VALUES
('2024-09-05', 1, 1, 71.40),
('2024-09-04', 3, 2, 73.40),
('2024-09-03', 5, 1, 75.60),
('2024-09-01', 4, 1, 91.50),
('2024-09-02', 2, 2, 42.40);

SELECT * FROM Venda;

-- Inserindo Produtos
INSERT INTO Produto (nome_produto, preco, estoque, id_categoria) 
VALUES
('Batom Vinho', 25.90, 70, NULL),
('Máscara de Hidratação', 40.00, 80, NULL),
('Pó Compacto', 19.90, 100, NULL),
('Blush Melu', 22.50, 80, NULL);

SELECT * FROM Produto;

-- Excluir tabela se já existir
DROP TABLE IF EXISTS DetalheVenda;


-- Criar tabela DetalheVenda
CREATE TABLE DetalheVenda (
    id_detalhe INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Inserir dados na tabela DetalheVenda
INSERT INTO DetalheVenda (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 25.90),    -- Venda 1, Batom Vinho, 2 unidades a 25.90 cada
(1, 2, 1, 40.00),    -- Venda 1, Máscara de Hidratação, 1 unidade a 40.00
(2, 3, 4, 19.90),    -- Venda 2, Pó Compacto, 4 unidades a 19.90 cada
(2, 4, 2, 22.50),    -- Venda 2, Blush Melu, 2 unidades a 22.50 cada
(3, 1, 1, 25.90),    -- Venda 3, Batom Vinho, 1 unidade a 25.90
(3, 3, 3, 19.90),    -- Venda 3, Pó Compacto, 3 unidades a 19.90 cada
(4, 2, 2, 40.00),    -- Venda 4, Máscara de Hidratação, 2 unidades a 40.00 cada
(4, 4, 3, 22.50),    -- Venda 4, Blush Melu, 3 unidades a 22.50 cada
(5, 2, 1, 40.00);    -- Venda 5, Máscara de Hidratação, 1 unidade a 40.00

-- Verificar os dados inseridos
SELECT * FROM DetalheVenda;
