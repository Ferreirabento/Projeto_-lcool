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


SELECT paises, contagem, data FROM dados_alcolicos
ORDER BY data;

