# Análise de Dados da Indústria da Moda

Este projeto analisa um conjunto de dados de diferentes marcas de moda, com foco em questões de sustentabilidade, pegada de carbono, uso de materiais ecológicos, entre outros aspectos ambientais. A análise foi realizada utilizando a base de dados disponível no [Kaggle](https://www.kaggle.com/), e responde a uma série de perguntas relacionadas a essas marcas.

## Descrição do Dataset

O dataset contém informações detalhadas sobre várias marcas de moda, incluindo:

- **Brand_ID**: Identificador da marca.
- **Brand_Name**: Nome da marca.
- **Country**: País de origem.
- **Year**: Ano de estabelecimento.
- **Sustainability_Rating**: Classificação de sustentabilidade (A-D).
- **Material_Type**: Tipo de material utilizado.
- **Eco_Friendly_Manufacturing**: Práticas de fabricação ecológicas (Sim/Não).
- **Carbon_Footprint_MT**: Pegada de carbono em toneladas métricas.
- **Water_Usage_Liters**: Uso de água em litros.
- **Waste_Production_KG**: Produção de resíduos em quilos.
- **Recycling_Programs**: Programas de reciclagem implementados (Sim/Não).
- **Product_Lines**: Número de linhas de produto.
- **Average_Price_USD**: Preço médio dos produtos em dólares americanos.
- **Market_Trend**: Tendência de mercado (Crescente, Estável, Declínio).
- **Certifications**: Certificações de sustentabilidade.

## Perguntas Respondidas

1. **Qual marca tem a maior classificação de sustentabilidade?**
   
   A marca com a maior classificação de sustentabilidade é selecionada com a consulta abaixo. No dataset atual, as marcas que possuem a classificação mais alta são as que possuem a nota "A".

    ```sql
    SELECT Brand_ID, Brand_Name, Sustainability_Rating
    FROM Brands
    ORDER BY Sustainability_Rating DESC
    LIMIT 1;
    ```

    Exemplo de marcas com classificação de sustentabilidade "D":
    - **BRAND-0001**: Brand_1
    - **BRAND-0002**: Brand_2
    - **BRAND-2020**: Brand_2020
    - **BRAND-0004**: Brand_4
    - **BRAND-0005**: Brand_5

2. **Quais marcas utilizam poliéster reciclado como material principal?**
   
   A consulta abaixo retorna as marcas que utilizam poliéster reciclado como seu principal material.

    ```sql
    SELECT Brand_ID, Brand_Name
    FROM Brands
    WHERE Material_Type = 'Recycled Polyester';
    ```

    Exemplo de marcas que utilizam poliéster reciclado:
    - **BRAND-0006**: Brand_6
    - **BRAND-0009**: Brand_9
    - **BRAND-0016**: Brand_16
    - **BRAND-0018**: Brand_18
    - **BRAND-0024**: Brand_24
    - **BRAND-0025**: Brand_25

3. **Qual é a pegada de carbono média para marcas estabelecidas após 2020?**

   A consulta abaixo calcula a pegada de carbono média para marcas estabelecidas após o ano de 2020.

    ```sql
    SELECT AVG(Carbon_Footprint_MT) AS Average_Carbon_Footprint
    FROM Brands
    WHERE Year >= 2020;
    ```

    A pegada de carbono média das marcas estabelecidas após 2020 é **2.496.562,06** toneladas métricas.

4. **Quais marcas possuem tendência de mercado crescente e classificação de sustentabilidade "A"?**

   A consulta abaixo retorna as marcas que têm uma tendência de mercado crescente e possuem uma classificação de sustentabilidade "A".

    ```sql
    SELECT Brand_ID, Brand_Name
    FROM Brands
    WHERE Market_Trend = 'Growing' AND Sustainability_Rating = 'A';
    ```

    Exemplo de marcas com tendência de mercado crescente e classificação de sustentabilidade "A":
    - **BRAND-0003**: Brand_3
    - **BRAND-0017**: Brand_17
    - **BRAND-0067**: Brand_67
    - **BRAND-0072**: Brand_72
    - **BRAND-0073**: Brand_73
    - **BRAND-0111**: Brand_111

5. **Qual é o uso total de água de todas as marcas que possuem programas de reciclagem?**

   A consulta abaixo calcula o uso total de água das marcas que têm programas de reciclagem implementados.

    ```sql
    SELECT SUM(Water_Usage_Liters) AS Total_Water_Usage
    FROM Brands
    WHERE Recycling_Programs = 'Yes';
    ```

   O uso total de água para todas as marcas com programas de reciclagem é **6.342.156.629.730.000** litros.

6. **Qual é a marca com o menor preço médio entre aquelas que utilizam algodão orgânico?**

   A consulta abaixo retorna a marca com o menor preço médio entre aquelas que utilizam algodão orgânico como material principal.

    ```sql
    SELECT Brand_ID, Brand_Name, Average_Price_USD
    FROM Brands
    WHERE Material_Type = 'Organic Cotton'
    ORDER BY Average_Price_USD ASC
    LIMIT 1;
    ```

    Exemplo de marcas que utilizam algodão orgânico com os menores preços médios:
    - **BRAND-2141**: Brand_2141 - $20.37
    - **BRAND-0502**: Brand_502 - $20.61
    - **BRAND-2177**: Brand_2177 - $23.59
    - **BRAND-1570**: Brand_1570 - $23.84
    - **BRAND-3345**: Brand_3345 - $23.87

## Como Utilizar

Este repositório contém consultas SQL que podem ser utilizadas para analisar o dataset de marcas de moda. Certifique-se de ter o dataset carregado corretamente em um banco de dados SQL e execute as consultas fornecidas para obter as respostas das perguntas listadas acima.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).

## Estrutura do Projeto

- **`data/`**: Contém o arquivo de dados utilizado para a análise.
- **`sql_queries/`**: Contém as consultas SQL utilizadas para responder às perguntas.
- **`notebooks/`**: Contém os notebooks Jupyter com as análises realizadas.
- **`README.md`**: Arquivo que você está lendo agora, explicando o projeto.

## Requisitos

Para executar a análise, certifique-se de ter as seguintes dependências instaladas:

- Python 3.x
- Bibliotecas SQL para Python (por exemplo, `sqlite3` ou `pandasql`)
- Pandas
- Jupyter Notebook (opcional)

## Como Executar

1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
    ```

2. Navegue até o diretório do projeto:
    ```bash
    cd seu-repositorio
    ```

3. Abra o Jupyter Notebook (opcional):
    ```bash
    jupyter notebook
    ```

4. Execute as consultas SQL e a análise no ambiente de sua escolha.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests.

## Agradecimentos

Agradecimentos ao [Kaggle](https://www.kaggle.com/) por disponibilizar o dataset utilizado neste projeto.

