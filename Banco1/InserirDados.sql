USE cadastro;

-- Inserindo dados na tabela
INSERT INTO pessoas
	(nome, nascimento, sexo, peso, altura, nacionalidade) -- id é auto_increment
VALUES
	('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

INSERT INTO pessoas
	(nome, nascimento, sexo, peso, altura, nacionalidade) -- id é auto_increment
VALUES
	('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');
    
INSERT INTO pessoas
	(id, nome, nascimento, sexo, peso, altura, nacionalidade) -- id é auto_increment
VALUES
	(DEFAULT, 'Creuza', '1999-07-05', 'F', '50.3', '1.62', DEFAULT);
    
-- Se a ordem dos dados for a mesma da tabela, não precisa informar as variáveis    
INSERT INTO pessoas VALUES
	(DEFAULT, 'Adalberto', '1930-05-13', 'M', '87.3', '1.75', DEFAULT);
    
-- Inserindo mais dados ao mesmo tempo
INSERT INTO pessoas VALUES    
    (DEFAULT, 'Cláudio', '1975-04-22', 'M', '90.3', '1.97', DEFAULT),
    (DEFAULT, 'Pedro', '1998-11-11', 'M', '87', '2', DEFAULT),
    (DEFAULT, 'Janaína', '1976-09-19', 'F', '75.4', '1.66', 'EUA');
    
SELECT * FROM pessoas; -- Conferindo