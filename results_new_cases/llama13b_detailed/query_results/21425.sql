SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND (genres LIKE '%Crime%' OR genres LIKE '%Mystery%')
AND (directors LIKE '%Sam%Raimi%' OR directors LIKE '%Scott%Frank%' OR directors LIKE '%Fincher%')
AND (characters LIKE '%detective%' OR characters LIKE '%investigator%')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10