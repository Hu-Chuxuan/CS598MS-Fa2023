SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType ='movie' AND isAdult = 0 AND (
    genres LIKE '%Action%' OR
    directors LIKE '%Jim Abrahams%' OR
    writers LIKE '%Jim Abrahams%' OR
    characters LIKE '%Police Officer%'
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5