--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--7 não está exatamente igual
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC, MAX(Duracao);

--8
SELECT * FROM Atores WHERE Genero = 'M'

--9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT 
    f.Nome AS Nome,
    g.Genero AS Genero
FROM 
    Filmes f
JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
JOIN 
    Generos g ON fg.IdGenero = g.Id;


--11
SELECT
	f.Nome AS Nome,
	g.Genero AS Genero
FROM
	Filmes f
JOIN
	FilmesGenero fg ON f.Id = fg.IdFilme
JOIN
	Generos g ON fg.IdGenero = g.Id
WHERE
	g.Genero = 'Mistério';


--12
SELECT
	f.Nome AS Nome,
	a.PrimeiroNome AS PrimeiroNome,
	a.UltimoNome AS UltimoNome,
	e.Papel AS Papel
FROM
	Filmes f
JOIN
	ElencoFilme e ON f.Id = e.IdFilme
JOIN
	Atores a ON a.Id = e.IdAtor