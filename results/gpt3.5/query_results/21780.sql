SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating, numVotes
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND genres LIKE '%Animation%'
AND primaryTitle NOT IN ('Lost in Translation')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5