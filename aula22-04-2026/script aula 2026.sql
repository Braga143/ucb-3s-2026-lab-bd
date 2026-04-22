USE atividade3;
SELECT
	t2.nome as nome_autor,
	t1.titulo,
    t3.nome as nome_categoria,
    t4.nome as nome_editora,
    t5.nome as nome_usuario
FROM 
	livro t1
JOIN
	usuario t5 ON (t1.id_usuario = t5.id_usuario)
JOIN
	autor t2 ON (t1.id_autor = t2.id_autor)
JOIN 
	categoria t3 ON (t1.id_categoria = t3.id_categoria)
JOIN 
	editora t4 ON (t1.id_editora = t4.id_editora);