-- Contagem - COUNT, COUNT(*), COUNT(DISTINCT)
SELECT 
	COUNT(Nome) -- Não conta os valores nulos
FROM clientes;

SELECT
	COUNT(Telefone)
FROM clientes;

SELECT	
	COUNT(*) -- Conta a quantidade de linhas da tabela
FROM clientes;

-- Conta os valores distintos da coluna escolaridade
SELECT
	COUNT(DISTINCT(Escolaridade))
FROM clientes;

-- SUM, AVG, MIN e MAX
-- Soma
SELECT 
	SUM(Receita_Venda) as 'Soma das receitas'
FROM pedidos;

-- Média
SELECT
	AVG(Receita_Venda) as 'Média das receitas'
FROM pedidos;

-- Mínimo e máximo
SELECT
	MIN(Receita_Venda) as 'Valor mínimo',
    MAX(Receita_Venda) as 'Valor máximo'
FROM pedidos;









