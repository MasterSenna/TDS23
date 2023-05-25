USE pubs

select *from sys.tables 

select *from dbo.authors

select au_fname, phone
FROM dbo.authors ORDER By au_fname DESC;

SELECT * FROM dbo.sales

SELECT TOP 5 
    ord_num, qty
FROM dbo.sales
ORDER By qty DESC

SELECT *FROM dbo.authors
WHERE state = 'CA'
AND contract = 0
ORDER BY city

SELECT SUM(qty) AS 'VENDAS TOTAIS'
FROM dbo.sales

