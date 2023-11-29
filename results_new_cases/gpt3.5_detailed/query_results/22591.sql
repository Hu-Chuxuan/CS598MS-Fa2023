SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND LOWER(tb.genres) LIKE '%musical%'
AND tb.startYear > 2010
AND tb.tconst NOT IN ('tt2771200', 'tt4555426', 'tt0887912', 'tt5013056', 'tt5301662')
ORDER BY tr.averageRating DESC
LIMIT 5