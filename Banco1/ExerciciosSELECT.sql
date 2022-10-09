USE cadastro;
-- Lista com nome de todas as gafanhotos fêmeas
SELECT nome FROM gafanhotos
WHERE  sexo = 'F'
ORDER BY nome;

-- Uma lista com os dados de todos que nasceram entre 1/jan/2000 e 31/dez/2015
SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31'
ORDER BY nascimento;

-- Uma lista com o nome de todos os homens que trabalham como programadores
SELECT nome FROM  gafanhotos
WHERE sexo = 'M' AND profissao = 'Programador'
ORDER BY nome;

-- Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra 'J'
SELECT * FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'j%'
ORDER BY nome;

-- Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 kg
SELECT nome, nacionalidade FROM  gafanhotos
WHERE nome LIKE '%silva%' AND nacionalidade != 'Brasil' AND peso < '100'
ORDER BY nome, nacionalidade;

-- A maior altura entre os homens que moram no Brasil
SELECT MAX(altura) FROM gafanhotos
WHERE nacionalidade = 'Brasil' AND sexo = 'M';

-- A média de peso de todos os cadastrados
SELECT AVG(peso) FROM gafanhotos;

-- O menor peso entre as mulheres que nasceram fora do Brasil e entre 01/jan/1990 e 31/dez/2000
SELECT MIN(peso) FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';

-- Quantidade de mulheres que possuem mais de 1.90 de altura
SELECT COUNT(*) FROM  gafanhotos
WHERE sexo = 'F' AND altura > '1.90';








