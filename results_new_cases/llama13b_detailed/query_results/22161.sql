SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, category, job, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Comedy%' AND directors = 'nm0085156' AND writers = 'nm0085156'
AND (
  characters LIKE '%Blacksmith%' OR
  characters LIKE '%Assistant%'
)
ORDER BY averageRating DESC, numVotes DESC