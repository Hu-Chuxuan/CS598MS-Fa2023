SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Suicide Squad', 'Captain America', 'Thor')
AND tb.startYear > 2010
ORDER BY tr.averageRating DESC
LIMIT 10