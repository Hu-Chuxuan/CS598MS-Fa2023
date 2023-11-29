SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear < 2016 AND endYear > 2015 AND (primaryTitle LIKE '%Disney%' OR originalTitle LIKE '%Disney%')
AND (name_basics.primaryName NOT LIKE '%Disney%')
AND (name_basics.knownForTitles LIKE '%Hidden Figures (2016)%' OR name_basics.knownForTitles LIKE '%Terms of Endearment (1983)%' OR name_basics.knownForTitles LIKE '%Beaches (1988)%')
GROUP BY tconst
ORDER BY averageRating DESC, numVotes DESC