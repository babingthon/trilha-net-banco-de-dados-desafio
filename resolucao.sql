--1
SELECT NOME,
       ANO
FROM   FILMES

--2
SELECT NOME,
       ANO,
       DURACAO
FROM   FILMES
ORDER  BY ANO

--3
SELECT NOME,
       ANO,
       DURACAO
FROM   FILMES
WHERE  ID = 28

--4
SELECT *
FROM   FILMES
WHERE  ANO = 1997

--5
SELECT *
FROM   FILMES
WHERE  ANO > 2000

--6
SELECT *
FROM   FILMES
WHERE  DURACAO > 100
       AND DURACAO < 150
ORDER  BY DURACAO

--7
SELECT ANO,
       Count(*) AS QUANTIDADE
FROM   FILMES
GROUP  BY ANO
ORDER  BY Count(*) DESC

--8
SELECT *
FROM   ATORES
WHERE  GENERO = 'M'

--9
SELECT *
FROM   ATORES
WHERE  GENERO = 'F'
ORDER  BY PRIMEIRONOME

--10
SELECT F.NOME,
       G.GENERO
FROM   FILMES F
       INNER JOIN FILMESGENERO FG
               ON FG.IDFILME = F.ID
       INNER JOIN GENEROS G
               ON G.ID = FG.IDGENERO

--11
SELECT F.NOME,
       G.GENERO
FROM   FILMES F
       INNER JOIN FILMESGENERO FG
               ON FG.IDFILME = F.ID
       INNER JOIN GENEROS G
               ON G.ID = FG.IDGENERO
WHERE  G.ID = 10

--12
SELECT F.NOME,
       A.PRIMEIRONOME,
       A.ULTIMONOME,
       EF.PAPEL
FROM   FILMES F
       INNER JOIN ELENCOFILME EF
               ON EF.IDFILME = F.ID
       INNER JOIN ATORES A
               ON A.ID = EF.IDATOR 