USE atividade1;

/*OBS: Mantido nome 'usuario' conforme estrutura original da atividade 1*/
ALTER TABLE usuario  
ADD COLUMN senha VARCHAR(255) NOT NULL AFTER email,
MODIFY COLUMN data_cadastro TIMESTAMP,
ADD COLUMN data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;