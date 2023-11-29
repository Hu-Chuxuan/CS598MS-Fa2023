SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Family%' 
AND tb.startYear <= 2022 
AND tr.numVotes >= 1000 
AND tb.tconst NOT IN ('tt1155076', 'tt0762107', 'tt1637725', 'tt0089218')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10