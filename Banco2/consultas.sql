-- Comentário
-- Exemplo 1 - Selecionar todas as linhas e colunas da:
-- a) Tabela Pedidos
SELECT * FROM pedidos;

-- b) Tabela clientes
SELECT * FROM clientes;

-- Exemplo 2 - Selecionar apenas algumas colunas da Tabela clientes
SELECT 
	ID_Cliente as 'ID do cliente', 
    Nome as 'Nome', 
    Data_Nascimento as 'Data de nascimento',
    Email as 'E-mail'
FROM clientes; 

-- Exemplo 3 - Selecionar apenas as 5 primeiras linhas da Tabela produtos
SELECT * FROM produtos
LIMIT 5;

-- Exemplo 4 - Selecionar todas as linhas da Tabela produtos, ordenando pela coluna Preco_Unit
SELECT * FROM produtos
ORDER BY Preco_Unit DESC;




