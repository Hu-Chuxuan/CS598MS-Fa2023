SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 1998 AND endYear = 1998 AND runtimeMinutes > 90 AND genres LIKE '%Romance%'
AND (directors LIKE '%Gurinder Chadha%' OR directors LIKE '%Baz Luhrmann%')
AND (writers LIKE '%Marc Norman%' OR writers LIKE '%Craig Armstrong%'])
AND (characters LIKE '%Shakespeare%' OR characters LIKE '%Viola%' OR characters LIKE '%Romeo%')
ORDER BY averageRating DESC, numVotes DESC