use atividade3;

select * from livro;
update livro
set lido = 0
where id_livro = 2;

/*Vizualiza registros da tabela audit_livro*/
select * from audit_livro;

/*Cria Usuario de BD */

create user "usuario_auxiliar"@"%"identified by "catolica";
