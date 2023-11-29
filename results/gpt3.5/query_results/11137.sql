SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Western%'
AND startYear <= 1964
AND tb.tconst NOT IN ('tt0058461', 'tt0108358', 'tt0114214')
ORDER BY averageRating DESC
LIMIT 5