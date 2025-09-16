-- 1 - Buscar o nome e ano dos filmes

SELECT NOME, ANO FROM FILMES

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT NOME, ANO FROM FILMES ORDER BY ANO ASC

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT NOME, ANO, DURACAO FROM FILMES WHERE UPPER(NOME) = 'DE VOLTA PARA O FUTURO'

-- 4 Buscar os filmes lançados em 1997

SELECT * FROM FILMES WHERE ANO = 1997

-- 5  Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM FILMES WHERE ANO > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO ASC

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT ANO, COUNT(1) AS QUANTIDADE 
FROM FILMES
GROUP BY ANO
ORDER BY QUANTIDADE DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome  FROM ATORES WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome FROM ATORES ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

SELECT f.NOME, g.GENERO 
FROM FilmesGenero AS fg
JOIN FILMES AS f ON f.Id = fg.IdFilme
JOIN Generos AS g ON g.Id = fg.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.NOME, g.GENERO 
FROM FilmesGenero AS fg
JOIN FILMES AS f ON f.Id = fg.IdFilme
JOIN Generos AS g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT F.Nome, A.PrimeiroNome, FG.PAPEL
FROM ElencoFilme AS FG 
JOIN FILMES AS F ON F.Id = FG.IdFilme
JOIN Atores AS A ON A.Id = FG.IdAtor


