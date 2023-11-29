SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2017
AND tb.genres LIKE '%Animation%'
AND tb.tconst NOT IN ('tt0110357', 'tt0383574', 'tt0103639', 'tt3521164', 'tt2771200', 'tt1679335')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5