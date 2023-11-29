SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND (tb.startYear BETWEEN 2010 AND 2020)
AND tb.tconst NOT IN ('tt0451279', 'tt0451279', 'tt0425413', 'tt0936501')  -- excluding user preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10