SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 1980 AND endYear >= 1980 AND runtimeMinutes > 90 AND genres LIKE '%Romance%' AND directors LIKE '%Ben Stiller%' AND writers LIKE '%Jerry Stahl%' AND name_basics.primaryName LIKE '%Jennifer Aniston%' AND name_basics.knownForTitles LIKE '%Mother%s Day%'
ORDER BY runtimeMinutes DESC, startYear DESC