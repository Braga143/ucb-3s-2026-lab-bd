CREATE DATABASE atividade3;

USE atividade3;

CREATE TABLE Usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) UNIQUE,
    senha VARCHAR(255),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE Autor(
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    ano_nascimento YEAR,
    ano_morte YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Editora(
	id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    cidade VARCHAR(64),
    estado VARCHAR(64),
    pais VARCHAR (64),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Categoria(
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL UNIQUE,
    descricao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

/*Criando a tabela de relacionamentos "Livro" entre as tabelas e suas respectivas FOREINGN KEY*/
CREATE TABLE Livro (
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_autor INT,
	id_editora  INT,
    id_categoria INT,
    titulo VARCHAR(255) NOT NULL UNIQUE,
    sinopse TEXT,
    ano_publicacao YEAR NOT NULL,
    lido BOOLEAN NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
/*Relacionamentos e referencias*/
CONSTRAINT fk_livro_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario(id_usuario)
    ON DELETE CASCADE,
    
CONSTRAINT fk_livro_autor
	FOREIGN KEY (id_autor)
    REFERENCES Autor(id_autor),
    
CONSTRAINT fk_livro_editora
	FOREIGN KEY (id_editora)
    REFERENCES Editora(id_editora),
    
CONSTRAINT fk_livro_categoria
	FOREIGN KEY (id_categoria)
    REFERENCES Categoria(id_categoria)
);

	