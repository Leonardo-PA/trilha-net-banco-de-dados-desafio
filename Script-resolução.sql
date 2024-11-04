--1 Buscar nome e ano 
SELECT 
   Nome,
   Ano
FROM Filmes

--2 Buscar nome e ano, ordenar ano
SELECT * FROM Filmes ORDER by Ano

--3  Buscar pelo filme de volta pro futuro, trazendo o nome, ano e a dura��o--
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--4  Buscar filme lan�ados em 1997--
SELECT 
Nome, Ano 
FROM Filmes WHERE Ano = 1997;

--5 Buscar os filmes lan�ados apos o ano 2000--
SELECT Nome, Ano FROM Filmes WHERE Ano > 2000;

--6  Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente--
SELECT Nome, Duracao FROM Filmes WHERE Duracao > 100 AND  Duracao < 150
ORDER BY Duracao ASC;

--7 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente--
SELECT Ano, 
COUNT(Ano) Quantidade FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC

--8 Buscra atores do genero Masculino, retornando o primeiro e ultimo nome
SELECT ID, PrimeiroNome, UltimoNome 
FROM Atores
WHERE Genero = 'Masculino'

--9 Buscra atores do genero feminino, retornando o primeiro e ultimo nome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome

--10 Buscar o nome do filme e o g�nero--
select Filmes.Nome, Generos.Genero
	from Filmes, Generos, FilmesGenero
	where FilmesGenero.IdFilme = Filmes.Id and
		FilmesGenero.IdGenero = Generos.Id;

--11 Buscar o nome do filme e o g�nero do tipo Mist�rio--
select Filmes.Nome, Generos.Genero
	from Filmes, Generos, FilmesGenero
	where FilmesGenero.IdFilme = Filmes.Id and
		FilmesGenero.IdGenero = Generos.Id and
		Generos.Genero = 'Mist�rio';


--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu papel--
select	Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
	from Filmes, Atores, ElencoFilme
	where ElencoFilme.IdAtor = Atores.Id and
		ElencoFilme.IdFilme = Filmes.Id;
