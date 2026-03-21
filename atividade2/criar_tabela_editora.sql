USE atividade2;

CREATE TABLE Editora (
	id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome_editora VARCHAR(255) NOT NULL UNIQUE,
    cidade VARCHAR(64) NOT NULL,
    estado VARCHAR(64) NOT NULL,
    pais VARCHAR(64) NOT NULL,
	data_cadastro TIMESTAMP,
	data_atualizacao TIMESTAMP
);