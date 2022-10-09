USE cadastro;

CREATE TABLE paciente (
	id int AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    dt_nascimento date,
    cpf int NOT NULL,
    nome_mae varchar(50),
    dt_atualizacao timestamp,
    PRIMARY KEY (id)
)DEFAULT CHARSET = utf8;

INSERT INTO paciente VALUES
	(DEFAULT, 'Álvaro', '1999-05-05', '01888633', 'Kenia', '2022-02-19 03:14:07');
    
SELECT * FROM paciente;

USE banco;
DELETE FROM paciente
WHERE id = 2;

SELECT * FROM paciente; 

INSERT INTO estagio.paciente 
SELECT * FROM cadastro.paciente;
INSERT INTO estagio.paciente 
SELECT * FROM banco.paciente;

SELECT * FROM paciente; 


USE estagio;

SELECT nome, COUNT(*) as 'Qtd de repetições' FROM paciente
GROUP BY nome
HAVING (COUNT(*)>1);

SELECT nome, MAX(dt_atualizacao) FROM paciente
GROUP BY nome
HAVING (COUNT(*)>1); 


SELECT nome, COUNT(*)/(SELECT COUNT(*) FROM paciente) FROM paciente 
GROUP BY nome
HAVING (nome = 'Sol');

SELECT COUNT(*)/(SELECT COUNT(*) FROM diagnosticos), a.tipo
FROM atendimentos as a JOIN diagnosticos as d
ON a.id = d.id_atend AND a.tipo = 'U';


SELECT COUNT(*) FROM paciente







