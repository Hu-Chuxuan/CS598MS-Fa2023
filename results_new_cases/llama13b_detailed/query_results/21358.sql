SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' AND startYear = 1981 AND isAdult = 0
AND (
    (directors = 'nm0000001' AND writers = 'nm0000001') OR 
    (directors = 'nm0000002' AND writers = 'nm0000002')
)
AND (
    (nconst = 'nm0005690' AND job = 'director') OR 
    (nconst = 'nm0085156' AND job = 'writer')
)
AND (
    (category = 'director' AND job = 'director of photography') OR 
    (category = 'actor' AND job = 'actor')
)
AND (
    (characters = '["Assistant"]' AND category ='self') OR 
    (characters = '["Blacksmith"]' AND category ='self')
)
ORDER BY averageRating DESC, numVotes DESC