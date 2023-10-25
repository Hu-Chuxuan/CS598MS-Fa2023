SELECT * FROM (title_basics tb INNER JOIN
(name_basics nb INNER JOIN title_rating tr ON
tb.movieId = nb.id) inner join
(title_crew c WHERE c.directorId = '98607-4e1aedc') inner join
(title_principals p WHERE p.characterId = '98607-4e1aedc')) WHERE tr.averageRating > 6 AND tr.numVotes >= 2