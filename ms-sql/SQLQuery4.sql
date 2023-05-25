SELECT au_id, au_lname, au_fname, phone, address, city,
state, zip,contract FROM authors

SELECT au_lname, au_fname, phone FROM authors

SELECT TOP(3) au_lname, au_fname, phone FROM authors

SELECT au_id, au_lname, au_fname, phone, address, city,
state, zip, contract FROM authors ORDER BY au_fname

SELECT au_id, au_lname, au_fname, phone, address, city, state,
zip, contract FROM authors ORDER BY au_fname DESC


SELECT au_id, au_lname,au_fname, phone, address, city,state,zip,contract FROM
authors WHERE city = 'Berkeley'

SELECT au_id,au_lname, au_fname, phone, address, city, state, zip, contract FROM
authors WHERE city = 'Oakland' AND contract = 1

SELECT au_id, au_lname, au_fname, phone, address, city, state, zip, contract FROM
authors WHERE au_fname LIKE 'a%'


SELECT authors.*, titleauthor.* FROM authors,titleauthor WHERE authors.au_id =
titleauthor.au_id


SELECT authors.*, titleauthor.* FROM authors,titleauthor WHERE authors.au_id =
titleauthor.au_id


UPDATE authors SET au_fname = 'Marina' WHERE au_id='999-55-7771’;

UPDATE authors SET au_fname = 'Márcia', au_lname='Neves' WHERE au_id='999-55-7771';



DELETE FROM authors WHERE au_id = '999-55-7771’
A linha 23 com a autora Márcia não existe mais;