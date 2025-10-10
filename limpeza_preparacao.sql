--- Criação do banco de dados e tabela para armazenar dados alcoólicos---
use Projeto_alcool;


select * from alcoholic_datasets;


CREATE TABLE dados_alcolicos (
    id_alcoholic INT PRIMARY KEY AUTO_INCREMENT not null,
    genero varchar(15),
    contagem INT,
    paises TEXT,
    codigo_paises varchar (5),
    data TEXT
);
