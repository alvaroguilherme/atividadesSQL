USE cadastro;

-- Criando tabela N pra N 
CREATE TABLE gafanhoto_assiste_curso (
	id int AUTO_INCREMENT,
    data date,
    idgafanhoto int,
    idcurso int,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
)DEFAULT CHARSET = utf8;

-- Inserindo dados
INSERT INTO gafanhoto_assiste_curso VALUES
	(DEFAULT, '2014-03-01','1','2');
 
 -- JOIN com mais de uma tabela
SELECT g.nome, a.idcurso, c.nome FROM gafanhotos as g 
JOIN gafanhoto_assiste_curso as a
ON g.id = a.idgafanhoto
JOIN cursos as c
ON c.idcurso = a.idcurso
ORDER BY g.nome;

