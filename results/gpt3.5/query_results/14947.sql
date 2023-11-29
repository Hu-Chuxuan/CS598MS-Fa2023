SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.isAdult = 0
AND tb.startYear >= 2010
AND tb.runtimeMinutes <= 150
AND (tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Sci-Fi%')
AND tr.averageRating >= 6.5
AND tr.numVotes >= 1000
AND tb.tconst NOT IN ('tt1731141')  -- Excluding "Ender's Game"
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10