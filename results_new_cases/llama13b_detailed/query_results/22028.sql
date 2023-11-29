SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND (
    (primaryTitle LIKE '%romantic comedy%' AND startYear <= 2007)
    OR (primaryTitle LIKE '%comedy%' AND startYear <= 2007)
    OR (primaryTitle LIKE '%romance%' AND startYear <= 2007)
    OR (primaryTitle LIKE '%Judd Apatow%' AND startYear <= 2007)
)
AND name_basics.primaryName NOT IN (SELECT nconst FROM name_basics WHERE primaryName = 'Fred Astaire')
AND name_basics.primaryProfession NOT IN (SELECT profession FROM name_basics WHERE primaryProfession = 'actor')
GROUP BY tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
HAVING AVG(rating) > (SELECT AVG(rating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%romantic comedy%'))
ORDER BY AVG(rating) DESC, startYear DESC