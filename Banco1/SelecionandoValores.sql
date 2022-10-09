USE cadastro;

-- Ordenando
SELECT * FROM cursos
ORDER BY nome;

SELECT ano, nome, carga FROM cursos
ORDER BY ano, nome;

-- Filtrar linhas
SELECT * FROM cursos
WHERE ano = '2016'
ORDER BY nome;

SELECT nome, descricao, carga, ano FROM cursos
WHERE ano != '2016'
ORDER BY ano, nome;

-- Selecionando intervalos
SELECT nome, ano FROM cursos
WHERE ano BETWEEN '2014' AND '2016'
ORDER BY ano DESC, nome;

-- Selecionando intervalos específicos
SELECT nome, descricao, ano FROM cursos
WHERE ano IN ('2014','2016','2020')
ORDER BY ano;

-- Combinando valores
SELECT * FROM cursos
WHERE carga > 35 AND totaulas < 30;







