--fato: media de bebidas por pais--

SELECT * FROM dados_alcolicos;

SELECT paises, codigo_paises, AVG(contagem)
FROM dados_alcolicos
GROUP BY paises, codigo_paises;


