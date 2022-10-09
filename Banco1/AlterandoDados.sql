USE cadastro;
#ALTER TABLE
-- Adicionando uma nova coluna
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

-- Removendo uma coluna
ALTER TABLE pessoas
DROP COLUMN profissao;

-- Adicionando coluna em uma posição específica
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) AFTER nome;

-- Adicionando coluna como primeira posição
ALTER TABLE pessoas
ADD codigo int FIRST; -- Pode-se remover COLUMN que também adiciona da mesma forma

-- Setando profissao como vazio
SET SQL_SAFE_UPDATES = 0;
UPDATE pessoas	
SET profissao='';
-- Alterando a estrutura da definição
ALTER TABLE pessoas
MODIFY profissao varchar(20) NOT NULL DEFAULT ''; -- Colocando NOT NULL e setando para o DEFAULT ser um campo vazio (SQL coloca null automaticamente)

-- Mudar o nome da coluna juntamente com as definições
ALTER TABLE pessoas
CHANGE profissao prof varchar(20); -- Nome antigo depois nome novo

-- Renomeando a tabela
ALTER TABLE pessoas
RENAME TO people;

-- describe (abreviado)
desc people;
SELECT profissao FROM people;

#IF NOT EXISTS
-- Cria uma tabela apenas se ela não existir
CREATE TABLE IF NOT EXISTS cursos (
	nome varchar(30) NOT NULL UNIQUE,
    descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano	year DEFAULT '2022'
) DEFAULT CHARSET=utf8;

-- Adicionando o ID
ALTER TABLE cursos
ADD idcurso int FIRST;

-- Colocando idcurso como chave primária
ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

desc cursos;

#IF EXISTS
-- Executa o comando se aquele parâmetro já existir


