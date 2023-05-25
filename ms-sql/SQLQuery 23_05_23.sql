SELECT * FROM PERSON.PERSON

WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23

-- PRECISO DAS PEÇAS 500 KG 700 KG

SELECT Weight FROM Production.Product
WHERE Weight > 500 
AND Weight <= 700

--Asalariados e Casados
SELECT *FROM HumanResources.Employee
WHERE SalariedFlag=1 
AND MaritalStatus = 'M'
AND BirthDate <= '1983/01/01'


--PESUQISAR OS NOMES EM INGLES 
-- NOME SOBRE NOME E E-MAIL

SELECT *FROM Person.Person
WHERE FirstName ='Peter'
AND LastName = 'Krebs'

SELECT *FROM Person.EmailAddress
WHERE BusinessEntityID = 26

--CODIGO MAIS LIMPO 

SELECT Person.FirstName, Person.Person.LastName, person.EmailAddress.EmailAddress
FROM PERSON.Person,PERSON.EmailAddress
WHERE PERSON.BusinessEntityID = EmailAddress.BusinessEntityID
AND PERSON.BusinessEntityID = 26

SELECT COUNT(*) FROM Production.Product

SELECT COUNT(*) AS 'QTDE DE PRODUTOS'FROM Production.Product

-- QUAIS PRODUTOS

SELECT DISTINCT *FROM Production.Product

-- SR. SRA. Ms. Mr.

SELECT DISTINCT title FROM Person.Person



SELECT Weight FROM Production.Product
WHERE Weight BETWEEN 500
AND 1000

SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2009/01/01'


SELECT * FROM PERSON.PERSON

WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23

SELECT *FROM Person.Person
WHERE BusinessEntityID IN (5,111,23)

SELECT * FROM Person.Person
WHERE FirstName LIKE 'R__'


--QUANTOS PRODUTOS TEMOS NO BD ACIMA DE 1500
SELECT COUNT(StandardCost) FROM Production.Product
WHERE StandardCost > 1500


--QUANTAS PESSOAS TEM O SOBRE NOME QUE COMEÇA COM A LETRS P
SELECT COUNT(lastName) FROM Person.Person 
WHERE lastName LiKE 'p%'


-- EM QUNATAS CIDADES UNICAS ESTÃO AS PESSOAS/CLIENTES 
SELECT count(DISTINCT City) FROM Person.Address



