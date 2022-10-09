USE cadastro;

-- Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
SELECT profissao, COUNT(*) FROM gafanhotos
GROUP BY profissao
ORDER BY COUNT(profissao) DESC;

-- Quantos homens e quantas mulheres nasceram após 01/jan/2005
SELECT sexo, COUNT(*) FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

-- Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. 
-- Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade
SELECT nacionalidade, COUNT(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(nacionalidade) > 3;

-- Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100 kg e que estão acima da média 
-- de altura de todos os cadastrados
SELECT altura, COUNT(*) FROM gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos)
ORDER BY altura;







