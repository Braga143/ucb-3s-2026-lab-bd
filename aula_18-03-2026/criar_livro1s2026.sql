USE atividade_18_03_2026;

CREATE TABLE Livro (
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_autor INT,
    id_editora INT,
    id_categoria INT,
    titulo VARCHAR(255),
    sinopse TEXT,
    ano_publicacao YEAR,
    lido BOOLEAN,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP,

    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),
    FOREIGN KEY (id_editora) REFERENCES Editora(id_editora),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
    
);