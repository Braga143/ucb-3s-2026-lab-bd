describe livro; /* Mostra a descricao de uma tabela nesse caso livro*/
show tables; /* Mostra todas as tabelas*/

ALTER TABLE livro
ADD COLUMN status_leitura VARCHAR(255); /* Adiciona uma coluna status_leitura na nossa tabela livro*/

ALTER TABLE livro
DROP COLUMN status_leitura VARCHAR(255); /* Exclui uma coluna status_leitura na nossa tabela livro*/

ALTER TABLE livro
MODIFY status_leitura BOOLEAN DEFAULT (0); /* Faz uma modificacao na coluna livro referente as c
onfuguracoes dacoluna exemplo sair do tipo VARCHAR(255) para BOOLEAN*/

ALTER TABLE livro
ADD CONSTRAINT check_status_livro /* Definir a logica  de restricao para que seja inserido o que se pede e nao algo fora disso*/
CHECK(IDADE > 0 && IDADE < 200);
 

/* Adiciona uma coluna ID como chave estrangeira e cria a restricao de referencia e define comportamento de exclusao/delete*/

ALTER TABLE livro 
ADD COLUMN id_usuario int,
ADD CONSTRAINT fk_livro_usuario /*Faz a referencia de uma cave estrangeira de uma determinada tabela*/
FOREIGN KEY (id_usuario) /*Faz o vinulo que a chave estrangeira e da tabela usuario*/
REFERENCES usuario(id_usuario) /*Aque faz a referencia que se trata da tabela usuario a referencia sempre e do id_usuario*/
ON DELETE CASCADE; 






