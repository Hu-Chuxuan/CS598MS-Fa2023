SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.name_basics.primaryName, t2.name_basics.birthYear, t2.name_basics.deathYear, t2.name_basics.primaryProfession, t2.name_basics.knownForTitles
FROM title_basics t1
JOIN name_basics t2 ON t1.title_basics.directors = t2.name_basics.nconst
WHERE t1.title_basics.title LIKE '%White Chicks%'
AND t1.title_basics.genres = 'Comedy'
AND t2.name_basics.primaryProfession = 'Actress'
AND t2.name_basics.knownForTitles = 'Finding Dory (2016)', 'Finding Nemo (2003)', 'Deadpool (2016)'
GROUP BY t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.name_basics.primaryName, t2.name_basics.birthYear, t2.name_basics.deathYear, t2.name_basics.primaryProfession, t2.name_basics.knownForTitles
ORDER BY t1.title_basics.startYear DESC