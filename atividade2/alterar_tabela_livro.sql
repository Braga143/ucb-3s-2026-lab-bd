USE atividade1;

/*Removendo colunas antigas*/

/*OBS: Mantido nome 'livro' conforme estrutura original da atividade1*/
ALTER TABLE livro
	DROP COLUMN autor,
	DROP COLUMN editora,
	DROP COLUMN categoria;

/*Adicionando novas colunas e as relações entre as tabelas*/
ALTER TABLE livro
	ADD COLUMN id_usuario INT NOT NULL,
	ADD COLUMN id_autor INT NOT NULL,
	ADD COLUMN id_editora INT NOT NULL,
	ADD COLUMN id_categoria INT NOT NULL,
	ADD COLUMN data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	ADD COLUMN data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

/*Definição das chaves estrangeiras*/
ALTER TABLE livro
	ADD CONSTRAINT fk_livro_usuario 
	FOREIGN KEY (id_usuario) 
	REFERENCES usuario(id_usuario) 
    ON DELETE CASCADE,
    
	ADD CONSTRAINT fk_livro_autor 
	FOREIGN KEY (id_autor) 
	REFERENCES atividade2.autor(id_autor),
    
	ADD CONSTRAINT fk_livro_editora 
	FOREIGN KEY (id_editora) 
	REFERENCES atividade2.editora(id_editora),
    
	ADD CONSTRAINT fk_livro_categoria 
	FOREIGN KEY (id_categoria) 
    REFERENCES atividade2.categoria(id_categoria);



