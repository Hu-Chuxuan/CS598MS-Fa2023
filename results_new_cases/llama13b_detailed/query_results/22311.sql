SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Comedy%'
AND (
  directors LIKE '%NM0005690%' OR directors LIKE '%NM0374658%' OR writers LIKE '%NM0085156%'
)
AND (
  name_basics.primaryName LIKE '%Robert%'] OR name_basics.primaryName LIKE '%John%']
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5