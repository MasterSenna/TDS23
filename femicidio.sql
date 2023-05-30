select * from Feminicidio_exemplo

-- MEDIA TOTAL

SELECT AVG(IDADE_PESSOA) FROM Feminicidio_exemplo WHERE TIPO_PESSOA = 'V�tima';

--Para selecionar a idade m�dia das v�timas por munic�pio:
SELECT MUNICIPIO_ELABORACAO, AVG(IDADE_PESSOA) AS 'IDADE MEDIA' FROM Feminicidio_exemplo WHERE TIPO_PESSOA = 'V�tima' GROUP BY MUNICIPIO_ELABORACAO;


--Para contar o n�mero de casos por natureza apurada:
SELECT NATUREZA_APURADA, COUNT(*) FROM Feminicidio_exemplo GROUP BY NATUREZA_APURADA;

--Para selecionar os casos que ocorreram em um determinado per�odo de tempo e munic�pio:
SELECT * FROM Feminicidio_exemplo WHERE DATA_FATO BETWEEN DATAHORA_REGISTRO_BO AND DATA_FATO AND MUNICIPIO_ELABORACAO = 'NOME_DO_MUNICIPIO';

--Para contar o n�mero de casos por m�s:
SELECT MES_ESTATISTICA, COUNT(*) AS M�S FROM Feminicidio_exemplo 
GROUP BY MES_ESTATISTICA
ORDER BY M�S asc


--
SELECT PROFISSAO, COUNT(*) AS NUMEROS  FROM Feminicidio_exemplo  WHERE TIPO_PESSOA = 'V�tima' AND SEXO_PESSOA = 'Feminino'
GROUP BY PROFISSAO;

ORDER BY 