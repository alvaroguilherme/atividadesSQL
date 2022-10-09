# INNER JOIN
-- Exemplo 1 - Fazer uma consulta que tenha como resultado todas as colunas da tabela de pedidos e as colunas Loja, Gerente e Telefone 
-- da tabela de loja.

-- Tabela A --> Tabela fato --> Tabela pedidos
-- Tabela B --> Tabela dimensão --> Tabela lojas
SELECT 
	pedidos.*,
    lojas.Loja,
    lojas.Gerente,
    lojas.Telefone
FROM pedidos
INNER JOIN lojas
	ON pedidos.ID_Loja = lojas.ID_Loja;
