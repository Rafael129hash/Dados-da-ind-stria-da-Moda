-- Analise de Dados da industria da mooda

-- A analise foi feita usando a base de dados do www.kaggle.com

-- Perguntas que serão respondidas:
-- 1. Qual marca com a maior classificação de sustentabilidade?
-- 2. Quais marcas que utilizam poliéster reciclado como material principal?
-- 3. Qual pegada de carbono média para marcas estabelecidas após 2020?
-- 4. Quais as marcas com tendência de mercado Crescente e classificação de sustentabilidade "A"?
-- 5. Qual o uso total de água de todas as marcas que possuem programas de reciclagem?
-- 6. Qual a marca com o menor preço médio entre aquelas que usam algodão orgânico?

SELECT * FROM aula10.sustainable_fashion_trends_2024;

SELECT Brand_ID, Brand_Name, Sustainability_Rating
FROM aula10.sustainable_fashion_trends_2024
ORDER BY Sustainability_Rating DESC
LIMIT 5;


SELECT Brand_ID, Brand_Name
FROM aula10.sustainable_fashion_trends_2024
WHERE Material_Type = 'Recycled Polyester';


SELECT AVG(Carbon_Footprint_MT) AS Average_Carbon_Footprint
FROM aula10.sustainable_fashion_trends_2024
WHERE Year >= 2020;


SELECT Brand_ID, Brand_Name
FROM aula10.sustainable_fashion_trends_2024
WHERE Market_Trend = 'Growing' AND Sustainability_Rating = 'A';


SELECT SUM(Water_Usage_Liters) AS Total_Water_Usage
FROM aula10.sustainable_fashion_trends_2024
WHERE Recycling_Programs = 'Yes';


SELECT Brand_ID, Brand_Name, Average_Price_USD
FROM aula10.sustainable_fashion_trends_2024
WHERE Material_Type = 'Organic Cotton'
ORDER BY Average_Price_USD ASC
LIMIT 5;
