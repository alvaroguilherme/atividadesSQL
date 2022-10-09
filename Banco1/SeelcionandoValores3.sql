USE cadastro;

# Funções de agrupamento
# GROUP BY 
-- Agrupa e mostra a quantidade do total de aulas
SELECT totaulas, COUNT(*) FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

-- Agrupa e mostra a quantidade das cargas referentes aos cursos que possuem um total de aulas = 30
SELECT carga, COUNT(*) FROM cursos
WHERE totaulas = 30
GROUP BY carga;

# Agrupando e Agregando
# HAVING
SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
HAVING COUNT(ano) >= 5 -- Mostra os anos que possuem um count maior ou igual a 5 
ORDER BY COUNT(*) DESC;

# Juntando SELECT's
SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);







