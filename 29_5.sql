SELECT * FROM Person.Person

-- TAMANHOS DAS LETRAS 

SELECT FIRSTNAME, UPPER(FirstName) LastName, LOWER(LastName) FROM Person.Person

-- LENGHT - LEN para contar o tamanho

SELECT FirstName, LEN(FirstName) FROM Person.Person
WHERE LEN(FirstName) <= 2

-- SUB STRING  possos obter as informações a a perti de um determinado ponto.

SELECT FirstName, SUBSTRING(FirstName,2,1) FROM Person.Person
WHERE SUBSTRING(FirstName,2,1) = '.'


-- replace 
SELECT ProductNumber, REPLACE(ProductNumber, '-', '-2023') FROM Production.Product


-- VIEW MONTAR VIEWS PARA O TRABALJ=HO DE FEMINICIDIO 

CREATE VIEW NOMES AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Mr.'


-- ALTER VIEW

CREATE OR ALTER VIEW NOMES AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'MS.'



SELECT *FROM NOMES 
ORDER BY 3 DESC 



CREATE OR ALTER VIEW EMAILS AS

SELECT A.BusinessEntityID AS ID, A.FirstName AS NOME, B.EmailAddress AS EMAIL
FROM Person.Person AS A
INNER JOIN Person.EmailAddress AS B
ON A.BusinessEntityID = B.BusinessEntityID

SELECT Person.Person.*,EMAILS.*FROM Person.Person, EMAILS
WHERE Person.BusinessEntityID = EMAILS.ID