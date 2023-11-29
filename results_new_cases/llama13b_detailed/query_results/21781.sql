SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType ='movie' AND isAdult = 0 AND (
    directors LIKE '%Bill Murray%' OR
    writers LIKE '%Bill Murray%' OR
    characters LIKE '%Bill Murray%'
)
ORDER BY averageRating DESC, numVotes DESC