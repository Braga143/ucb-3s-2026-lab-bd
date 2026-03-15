USE atividade_18_03_2026;

CREATE TABLE Categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(128) NOT NULL UNIQUE,
	descricao TEXT NOT NULL,
	data_cadastro TIMESTAMP NOT NULL,
	data_atualizacao TIMESTAMP NOT NULL
);