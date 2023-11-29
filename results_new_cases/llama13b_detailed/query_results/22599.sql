SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear < '2000' AND endYear > '1990' AND runtimeMinutes > 60
AND NOT (directors LIKE '%Billy%') AND NOT (writers LIKE '%Billy%')
AND NOT (name_basics.nconst IN (SELECT nconst FROM name_basics WHERE primaryName = 'Billy Bob Thornton'))
ORDER BY numVotes DESC, averageRating DESC