SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 2006
AND tb.primaryTitle NOT IN ('The Mask', 'Click')
ORDER BY tr.averageRating DESC
LIMIT 5