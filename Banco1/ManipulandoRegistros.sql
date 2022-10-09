USE  cadastro;
SHOW TABLES;
-- Inserindo dados na tabela para manipulá-los posteriormente
INSERT INTO cursos VALUES
	('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
    ('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
    ('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2010'),
    ('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
    ('5', 'Jarva', 'Introdução à linguagem Java', '10', '29', '2000'),
    ('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
    ('7', 'Word', 'Curso Completo de Word', '40', '30', '2016'),
    ('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
    ('9', 'Cozinha Árabe', 'Aprenda a Fazer Kibe', '40', '30', '2018'),
    ('10', 'YouTuber', 'Gerar Polêmica e Ganhar Inscritos', '5', '2', '2018'),
	('11', 'Hip Hop', 'Aprenda a Dançar', '40', '30', '2022'),
    ('12', 'Forró', 'Aprenda a Dançar Forrózin', '5', '2', '2022');

#UPDATE
-- Manipulando linhas (apenas uma linha por comando)
-- Alterando o nome do curso
UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

-- Alterando nome e ano (pode-se alterar mais de uma coluna ao mesmo tempo, desde que elas estejam na mesma linha)
UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

-- Alterando nome, carga e ano
UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso = '5'
LIMIT 1; -- Limita a mudar apenas uma linha no banco

#DELETE
-- Deletando linhas
DELETE FROM cursos
WHERE idcurso = '8';

-- Deletando mais de uma linha ao mesmo tempo
DELETE FROM cursos
WHERE idcurso = '9'OR idcurso = '10';

-- Deletando a linha por outro atributo 
DELETE FROM cursos
WHERE ano = '2022'
LIMIT 2; -- Limitando a apenas duas linhas para serem excluídas, que são as duas linhas com ano = '2022'

#TRUNCATE
-- Apagando todos os registros da tabela
-- TRUNCATE TABLE cursos
TRUNCATE cursos; -- Forma abreviada


-- Conferindo dados
SELECT * FROM cursos;



