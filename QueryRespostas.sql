SELECT Nome, Ano from Filmes;


SELECT Nome, Ano from Filmes
Order by Ano asc;

Select Nome, Ano, Duracao from Filmes
where Nome = 'de volta para o futuro';

SELECT * FROM Filmes
where Ano = 1997;

SELECT * FROM Filmes
where Ano >= 2000;

SELECT * FROM Filmes
where Duracao > 100 AND
Duracao < 150 
ORDER BY Duracao ASC;

SELECT Ano, COUNT(*) AS filme 
FROM Filmes
GROUP BY Ano
ORDER BY filme DESC;

SELECT PrimeiroNome, UltimoNome from Atores
where Genero = 'M';

SELECT PrimeiroNome, UltimoNome from Atores
where Genero = 'F'
ORDER BY PrimeiroNome;

SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id;

SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;