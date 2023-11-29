SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND startYear BETWEEN 1980 AND 1990
AND primaryTitle <> 'Brighton Beach Memoirs'
AND primaryTitle NOT IN ('The Taming of the Shrew', 'Cleopatra', 'National Velvet', 'Cat on a Hot Tin Roof')
ORDER BY averageRating DESC
LIMIT 5