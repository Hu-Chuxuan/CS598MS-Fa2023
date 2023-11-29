SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.startYear <= 1999
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0103639') -- exclude 'Aladdin  (1992)'
ORDER BY tr.averageRating DESC
LIMIT 5