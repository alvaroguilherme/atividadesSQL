USE cadastro;

#LIKE
-- Encontrar valores que possuem aquele caracter
SELECT * FROM cursos
WHERE nome LIKE 'P%'; -- % substitui nenhum ou vários caracteres

SELECT * FROM cursos
WHERE nome LIKE '%a'; 

SELECT * FROM cursos
WHERE nome LIKE '%f%'; 

SELECT * FROM cursos
WHERE nome NOT LIKE '%a%'; -- Mostra os que não possuem a letra 'a'

SELECT * FROM cursos
WHERE nome LIKE 'ph%p_'; -- Sublinhado (_) exige que tenha um caracter, não substitui vazio ou vários caracteres 

-- Mostrando apenas os distintos - Distinguir
SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

# Funções de Agregação
# COUNT
SELECT COUNT(*) FROM cursos;

SELECT COUNT(*) FROM cursos
WHERE carga > 40;

# MAX
-- Maior carga entre os cursos
SELECT MAX(carga) FROM cursos;

-- Cursos com mais aulas em 2016
SELECT MAX(totaulas) FROM cursos
WHERE ano  = '2016';

# MIN
-- Mínimo de total de aulas dos cursos de 2016
 SELECT MIN(totaulas) FROM cursos
WHERE ano  = '2016';

# SUM
-- Somando o total de aulas de todos os cursos
SELECT SUM(totaulas) FROM cursos;

-- Somando o total de aulas de todos os cursos de 2018
SELECT SUM(totaulas) FROM cursos
WHERE ano = '2018';

# AVG
-- Média do total de aulas de todos os cursos de 2018
SELECT AVG(totaulas) FROM cursos
WHERE ano = '2018';








