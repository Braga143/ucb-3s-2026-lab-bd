use atividade3;

/*VIEW vw_categoria_livro*/
create or replace view vw_categoria_livro as(
select 
	t2.NOME as categooria,
    count(t1.id_livro) as QTD

from
	livro t1
join categoria t2 on (t1.id_categoria = t2.id_categoria)
group by t2.NOME
);

/*CONSULTA DADOS DA VIEW*/
select * from vw_categoria_livro;

create or replace view vw_livro_lido as (
	select
        titulo,
        lido
	from livro
    where lido = 1
    );

select * from vw_livro_lido;

/*CRIA vw_relatorio*/
create or replace view vw_relatorio as (
select 
	t2.NOME as categooria,
    count(t1.id_livro) as QTD,
    SUM(t1.lido) QTD_LIDO,
    ROUND((sum(t1.lido) / count(t1.id_livro)) * 100, 2) as pc_lido
    
from
	livro t1
join categoria t2 on (t1.id_categoria = t2.id_categoria)
group by t2.NOME
);

select * from vw_relatorio;

/*para melhorar a performace, vamos criar uma stored procedure 
que carrega os dados da vw_relatorio em uma tabela relatorio
*/
delimiter $$
create procedure sp_atuaizar_relatorio()
begin
	/*inicia tranzição*/
    
    start transaction;
    
    /*1. deleta tabela relatorio se existir*/
    drop table if exists relatorio;
    
    /*2. cria tabela relatorio */
    create table relatorio(
    categoria varchar(255),
    QTD int,
    QTD_LIDO int,
    pc_lido decimal
    );
    
    /*3. inserir dados da view na tabela relatorio */
    insert into relatorio (select * from vw_relatorio);
    
    /*confirma as alterações no BD */
    commit;
end$$

/* consulta dados do relatorio */
select * from relatorio;

/* Executa procedure sp_atuaizar_relatorio */
call sp_atuaizar_relatorio();


/*Atualiza os livros lidos */
update livro 
set lido = 0
where id_categoria = 6;

 


    



