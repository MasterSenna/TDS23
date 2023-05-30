select * from Feminicidio_exemplo

-- MEDIA TOTAL

SELECT AVG(IDADE_PESSOA) FROM Feminicidio_exemplo WHERE TIPO_PESSOA = 'Vítima';

--Para selecionar a idade média das vítimas por município:
SELECT MUNICIPIO_ELABORACAO, AVG(IDADE_PESSOA) AS 'IDADE MEDIA' FROM Feminicidio_exemplo WHERE TIPO_PESSOA = 'Vítima' GROUP BY MUNICIPIO_ELABORACAO;


--Para contar o número de casos por natureza apurada:
SELECT NATUREZA_APURADA, COUNT(*) FROM Feminicidio_exemplo GROUP BY NATUREZA_APURADA;

--Para selecionar os casos que ocorreram em um determinado período de tempo e município:
SELECT * FROM Feminicidio_exemplo WHERE DATA_FATO BETWEEN DATAHORA_REGISTRO_BO AND DATA_FATO AND MUNICIPIO_ELABORACAO = 'NOME_DO_MUNICIPIO';

--Para contar o número de casos por mês:
SELECT MES_ESTATISTICA, COUNT(*) AS MÊS FROM Feminicidio_exemplo 
GROUP BY MES_ESTATISTICA
ORDER BY MÊS asc


--
SELECT PROFISSAO, COUNT(*) AS NUMEROS  FROM Feminicidio_exemplo  WHERE TIPO_PESSOA = 'Vítima' AND SEXO_PESSOA = 'Feminino'
GROUP BY PROFISSAO;

ORDER BY 