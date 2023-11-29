SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Kids%'
AND tb.startYear <= 2022
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Love Actually (2003)')
ORDER BY tr.numVotes DESC
LIMIT 5