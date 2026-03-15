USE atividade_18_03_2026;

CREATE TABLE Editora (
	id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cidade VARCHAR(64),
    estado VARCHAR(64),
    pais VARCHAR(64),
	data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);