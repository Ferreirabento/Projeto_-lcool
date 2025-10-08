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


SELECT * FROM dados_alcolicos;

--- juntando fato com dimensao ---
CREATE TABLE paises (
    id_paises int PRIMARY key AUTO_INCREMENT not null,
    id_alcoholic int,
    paises TEXT,
    codigo_paises varchar(2),
    Foreign key (id_alcoholic) references dados_alcolicos(id_alcoholic)
);

--aqui ainda falta por os outros dados com distinção para que poss afazer uma contagem depois--
INSERT into paises (paises)
select DISTINCT paises from dados_alcolicos;

SELECT * from paises;

DROP TABLE paises;

