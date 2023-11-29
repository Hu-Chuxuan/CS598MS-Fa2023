SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres NOT LIKE '%Stupid%'
AND tb.genres LIKE '%Parody%'
AND tb.startYear >= 1990
AND tr.averageRating >= 6
AND tb.tconst NOT IN ('tt0338013', 'tt1343092')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10