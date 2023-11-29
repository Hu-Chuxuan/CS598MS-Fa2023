SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_principals tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics nb1 ON tp1.nconst = nb1.nconst
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE nb1.primaryName = 'Hugh Jackman'
AND tb2.primaryTitle IN ('The Wolverine', 'Logan')
AND tb1.primaryTitle NOT IN ('Jumanji', 'Stir of Echoes', 'Slum')
AND tb1.titleType = 'movie'
AND tb1.startYear >= 2013
ORDER BY tb1.averageRating DESC
LIMIT 5