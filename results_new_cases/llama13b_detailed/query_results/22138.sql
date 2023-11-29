SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE
titleType ='movie' AND
isAdult = 0 AND
startYear <= 1981 AND
endYear >= 1981 AND
runtimeMinutes > 90 AND
genres LIKE '%comedy%' AND
genres LIKE '%adventure%' AND
directors LIKE '%nm0005690%' AND
writers LIKE '%nm0085156%' AND
characters LIKE '%[Assistant]%'

ORDER BY runtimeMinutes DESC, startYear DESC