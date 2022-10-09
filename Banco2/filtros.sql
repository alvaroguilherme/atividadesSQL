-- Criando filtros
-- Exemplo 1 - Mostrar apenas os produtos com preços iguais ou maiores que R$ 1800
SELECT * FROM produtos
WHERE Preco_Unit >= 1800
ORDER BY Preco_Unit;

-- Exemplo 2 - Mostrar apenas os produtos com preços iguais a R$ 3100
SELECT * FROM produtos
WHERE Preco_Unit = 3100;

-- Exemplo 3 - Mostrar apenas os produtos da marca Dell
SELECT * FROM produtos
WHERE Marca_Produto = 'Dell';

-- Exemplo 4 - Mostrar apenas os pedidos feitos no dia 03/01/2019
SELECT * FROM pedidos
WHERE Data_Venda = '2019-01-03';

-- Exemplo 5 - Mostrar apenas os pedidos feitos a partir do dia 03/01/2019
SELECT * FROM pedidos
WHERE Data_Venda >= '2019-01-03';

-- Exemplo 6 - Mostrar apenas os clientes solteiros e do sexo masculino
SELECT * FROM clientes
WHERE Estado_Civil = 'S' AND Sexo = 'M'
ORDER BY Nome;

-- Exemplo 7 - Mostrar apenas os produtos das marcas Dell ou Samsung
SELECT * FROM produtos
WHERE Marca_Produto = 'Dell' OR Marca_Produto = 'Samsung';





