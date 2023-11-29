SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND isAdult = 0
AND startYear >= 2010
AND genres LIKE '%Animation%'
AND tb.primaryTitle NOT IN ('Frozen', 'Finding Nemo', 'The Emoji Movie')
ORDER BY tr.averageRating DESC
LIMIT 5