SELECT DISTINCT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1950
AND tb.genres LIKE '%Western%'
AND tb.primaryTitle NOT IN ('Young Guns', 'Tombstone', 'The Outlaws', 'The Good, the Bad and the Ugly')
ORDER BY tr.averageRating DESC
LIMIT 5