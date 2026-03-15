USE atividade_18_03_2026;

CREATE TABLE Autor (
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
    ano_nascimento YEAR,
    ano_morte YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);