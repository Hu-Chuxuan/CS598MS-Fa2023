SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 1980
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0369359', 'tt1570728', 'tt0100405', 'tt0098635')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5