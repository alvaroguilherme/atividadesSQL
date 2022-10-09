# GROUP BY
-- Exemplo 1 - Utilizar o GROUP BY para criar uma consulta e descobrir o total de clientes por sexo.
SELECT 
	Sexo,
    COUNT(*) as 'Qtd de clientes'
FROM clientes
GROUP BY Sexo;

-- Exemplo 2 - Fazer uma consulta à tabela de produtos para retornar o total de produtos por marca.
SELECT 
	Marca_Produto as 'Marca',
    COUNT(*) as 'Qtd de produtos'
FROM produtos
GROUP BY Marca_Produto
ORDER BY COUNT(*) DESC;

-- Exemplo 3 - Fazer uma consulta à tabela de pedidos e descobrir a receita total e custo total por id do produto.
SELECT 
	ID_Loja as 'ID da loja',
    SUM(Custo_Unit) as 'Custo total',
    SUM(Preco_Unit) as 'Receita total'
FROM pedidos
GROUP BY ID_Loja;