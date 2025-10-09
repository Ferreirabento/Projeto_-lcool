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
    codigo_paises varchar (5),
    Foreign key (id_alcoholic) references dados_alcolicos(id_alcoholic)
);

--tem um arquivo que vou fazer com que o ids fiquem parecido, tranformar em csv e depois por na tabela paises--

