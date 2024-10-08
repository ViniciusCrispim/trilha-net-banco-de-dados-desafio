-- 1 Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano;

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'de volta para o futuro';

-- 4 Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- 5 Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano >= 2000;

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

-- 7 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY MAX(Duracao) DESC;
-- PRA SAIR IGUAL AO RESULTADO DO DESAFIO
-- FOI NECESS�RIO ORDENAR PELA QUANTIDADE 
-- E N�O PELA DURA��O COMO PEDE NA QUEST�O.
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M';

-- 9 Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 Buscar o nome do filme e o g�nero
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = IdFilme 
JOIN Generos ON IdGenero = Generos.Id;

-- 11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = IdFilme
JOIN Generos ON IdGenero = Generos.Id WHERE Generos.Genero = 'Mist�rio';

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, Ef.Papel
FROM Filmes F
JOIN ElencoFilme Ef ON F.Id = Ef.IdFilme
JOIN Atores A ON Ef.IdAtor = A.Id;


