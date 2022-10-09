-- Criando Banco de Dados:
CREATE DATABASE Cadastro;

-- Criando as tabelas:
CREATE TABLE pessoas(
	nome varchar(30),
    idade tinyint(3),
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);

-- Descrição da coluna pessoas
describe pessoas;

-- Excluindo um banco de dados:
DROP DATABASE cadastro;