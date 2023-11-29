SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 2017
AND tb.genres LIKE '%Action%'
OR tb.genres LIKE '%Horror%'
OR tb.genres LIKE '%Sci-Fi%'
OR tb.genres LIKE '%Fantasy%'
AND tb.tconst NOT IN ('tt0108052', 'tt1392170', 'tt0133093', 'tt3501632')
ORDER BY tr.averageRating DESC
LIMIT 10