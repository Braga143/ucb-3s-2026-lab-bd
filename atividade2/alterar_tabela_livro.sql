USE atividade2;

CREATE TABLE Livro (
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_autor INT,
    id_editora INT,
    id_categoria INT,
    titulo VARCHAR(255) NOT NULL UNIQUE,
    sinopse TEXT,
    ano_publicacao YEAR NOT NULL,
    lido BOOLEAN NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_livro_usuario FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
        ON DELETE CASCADE,

    CONSTRAINT fk_livro_autor FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),

    CONSTRAINT fk_livro_editora FOREIGN KEY (id_editora) REFERENCES Editora(id_editora),

    CONSTRAINT fk_livro_categoria FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
    
);

SHOW TABLES;