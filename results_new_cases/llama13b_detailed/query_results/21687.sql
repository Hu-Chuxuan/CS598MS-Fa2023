SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, category, job, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 2006
AND (
    (title_ratings.averageRating > 6 AND title_ratings.numVotes > 100)
    OR (title_principals.category = 'actor' AND title_principals.job = 'lead')
)
AND (
    (title_basics.primaryTitle LIKE '%Eragon%' AND title_ratings.averageRating > 6)
    OR (title_basics.originalTitle LIKE '%Eragon%' AND title_ratings.averageRating > 6)
)
ORDER BY title_ratings.averageRating DESC, title_principals.category ASC