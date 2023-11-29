SELECT primaryTitle, startYear, averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.primaryTitle = 'Jumanji' OR tb.primaryTitle = 'Pitch Perfect 3')
AND tb.startYear = 2017
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5