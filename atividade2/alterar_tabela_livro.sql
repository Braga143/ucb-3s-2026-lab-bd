USE atividade_18_03_2026;

CREATE TABLE Livro (
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_autor INT,
    id_editora INT,
    id_categoria INT,
    titulo VARCHAR(255) NOT NULL UNIQUE,
    sinopse TEXT NOT NULL UNIQUE,
    ano_publicacao YEAR NOT NULL UNIQUE,
    lido BOOLEAN NOT NULL UNIQUE,
    data_cadastro TIMESTAMP NOT NULL UNIQUE,
    data_atualizacao TIMESTAMP NOT NULL UNIQUE,

    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),
    FOREIGN KEY (id_editora) REFERENCES Editora(id_editora),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
    
);

SHOW TABLES;