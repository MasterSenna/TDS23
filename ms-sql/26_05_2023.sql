CREATE DATABASE NORTHWIND 


-- COMANDO PARA EXIBIR AS TABELAS 
SELECT * FROM sys.tables

SELECT * FROM  Funcionarios

SELECT F1.Nome,F1.DataAdmissao, F2.Nome, F2.DataAdmissao
FROM Funcionarios F1, Funcionarios F2
WHERE DATEPART(YEAR, F1.DataAdmissao) = DATEPART(YEAR, F2.DataAdmissao)


SELECT DISTINCT F1.Nome,DATEPART(YEAR, F1.DataAdmissao) AS [ANO ADMISSAO]
FROM Funcionarios F1, Funcionarios F2
WHERE DATEPART(YEAR, F1.DataAdmissao) = DATEPART(YEAR, F2.DataAdmissao)




--