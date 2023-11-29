SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt1731141', 'tt2096673')
ORDER BY tr.averageRating DESC
LIMIT 5