SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2017 AND endYear >= 2013 AND runtimeMinutes > 12 AND genres LIKE '%Action%' AND directors LIKE '%Hugh Jackman%' AND writers LIKE '%Hugh Jackman%'
GROUP BY tconst
HAVING COUNT(DISTINCT nconst) > 2 AND COUNT(DISTINCT category) > 2
ORDER BY averageRating DESC, numVotes DESC