SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0310281', 'tt0266543', 'tt1431045', 'tt2379701')  -- excluding user preference history and White Chicks
AND nb.primaryName != 'Marlon Wayans'  -- excluding the actor from White Chicks
AND nb.primaryName != 'Shawn Wayans'  -- excluding the actor from White Chicks
ORDER BY tr.averageRating DESC
LIMIT 5