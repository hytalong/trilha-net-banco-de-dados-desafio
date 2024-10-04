--1
select Nome, Ano from Filmes

--2
select * from Filmes order by Ano asc

--3
Select * from Filmes where Nome like '%De volta para o futuro%'
Select * from Filmes where Nome = 'De Volta para o Futuro'
Select * from Filmes where id = 28

--4 
Select * from Filmes where Ano = '1997'

--5
Select * from Filmes where Ano > 2000

--6
Select * from Filmes where Duracao > 100 and Duracao < 150 order by duracao asc

Select * from Filmes where Duracao between 101 and 150 order by duracao asc

--7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY MAX(Duracao) DESC;

Select Ano, COUNT(*) as Quantidade from Filmes group by Ano order by Quantidade desc

--8
select id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M' 

--9
select id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome asc

--10

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

--11

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
where g.Genero = 'Mistério'

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
where g.Genero like '%Mistério%'

--12

SELECT f.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, EL.Papel
FROM Filmes f
INNER JOIN ElencoFilme EL ON f.Id = EL.IdFilme
INNER JOIN Atores A on EL.IdAtor = A.Id
