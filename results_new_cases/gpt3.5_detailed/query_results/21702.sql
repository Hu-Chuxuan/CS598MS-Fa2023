SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Kung-Fu%'
AND tb.startYear >= 2000
AND tb.startYear <= 2004
AND tb.primaryTitle != 'The Last Dragon'
AND tb.primaryTitle NOT IN ('The Jungle Book', 'Moana', 'Jumanji', 'Beauty and the Beast')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5