use Projeto_alcool;


select * from alcoholic_datasets;


CREATE TABLE dados_alcolicos (
    id_alcoholic INT PRIMARY KEY AUTO_INCREMENT,
    genero TEXT,
    contagem INT,
    paises TEXT,
    codigo_paises TEXT,
    data TEXT
);


INSERT INTO dados_alcolicos (genero, contagem, paises, codigo_paises, data)
SELECT Gender, Count, Countries, "Countries code", Date from alcoholic_datasets;


SELECT paises, contagem, data FROM dados_alcolicos
ORDER BY data;

