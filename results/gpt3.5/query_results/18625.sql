SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.startYear >= 2010
AND tb.startYear <= 2017
AND tb.tconst NOT IN ('tt1453405', 'tt2096673', 'tt2015381')  -- Exclude the movies from user's preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5