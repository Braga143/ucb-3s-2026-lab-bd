USE atividade_18_03_2026;

CREATE TABLE Autor (
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(255) NOT NULL UNIQUE,
    ano_nascimento YEAR NOT NULL,
    ano_morte YEAR NOT NULL,
    apresentacao TEXT NOT NULL UNIQUE,
    data_cadastro TIMESTAMP NOT NULL,
    data_atualizacao TIMESTAMP NOT NULL
);