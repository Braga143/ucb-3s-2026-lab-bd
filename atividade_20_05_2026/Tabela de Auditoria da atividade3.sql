use atividade3;

/*criar tabela de auditoria*/

create table audit_livro(
	acao varchar(255),
	usuario_bd varchar(255),
    id_livro int,
    dados_antigos text,
    dados_novos text,
    data_acao timestamp default current_timestamp
);

/* Criar gatilho/tigger para controle de updatesna tabela livro*/

delimiter $$
create trigger audit_update_livro
 after update on livro
 for each row
 begin
	insert into audit_livro
    (acao, usuario_bd, id_livro, dados_antigos, dados_novos)
    values /*concat: titulo: 1984 Lido: 0*/
    ("update", user(), old.id_livro,
		concat("Titulo: ", old.titulo, "lido: ", old.lido),
        concat("Titulo: ", new.titulo, "Lido: ", new.lido)
	);
end$$
delimiter ;

select * from livro;
drop trigger audit_update_livro;


