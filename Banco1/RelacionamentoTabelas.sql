USE cadastro;
desc gafanhotos;

-- Adicionando a chave estrangeira
ALTER TABLE gafanhotos
ADD COLUMN cursopreferido int;

ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);

-- Colocando o curso preferido nos gafanhotos
UPDATE gafanhotos SET cursopreferido = '6'
WHERE id = '1';

#JOIN
-- Juntando dados de dua tabelas no SELECT
SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
FROM cursos JOIN gafanhotos
ON cursos.idcurso = gafanhotos.cursopreferido AND cursos.nome = 'MySQL';

SELECT g.nome, g.cursopreferido, c.nome, c.ano
FROM gafanhotos as g LEFT OUTER JOIN cursos as c -- OUTER JOIN mostra todos os valores mesmo os nulos, ou seja, os que não tem relação com a FOREIGN KEY
ON c.idcurso = g.cursopreferido;

SELECT * FROM gafanhotos;