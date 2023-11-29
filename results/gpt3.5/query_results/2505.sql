SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2000
AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('Wonder Woman', 'Mad Max: Fury Road', 'Wedding Crashers', 'Rough Night')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5