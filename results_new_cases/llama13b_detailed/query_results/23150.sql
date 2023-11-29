SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, birthYear, deathYear, primaryProfession, knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE
genres LIKE '%Horror%' AND
startYear <= 2018 AND
endYear >= 2013 AND
runtimeMinutes >= 80 AND
directors = 'nm0005690'
OR
directors = 'nm0374658'
OR
writers = 'nm0085156'
OR
knownForTitles = 'tt0053137'
OR
knownForTitles = 'tt00319'
RETURN 10