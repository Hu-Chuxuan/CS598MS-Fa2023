SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.genres LIKE '%Fantasy%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Family%'
AND tb.startYear >= 1980
AND tb.startYear <= 2022
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('The Lord of the Rings: The Fellowship of the Ring (2001)', 'Dune  (1984)')
ORDER BY tr.averageRating DESC
LIMIT 10