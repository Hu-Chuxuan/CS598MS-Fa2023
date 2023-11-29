SELECT t.title_basics.title, t.title_basics.primaryTitle, t.title_basics.originalTitle, t.title_basics.runtimeMinutes, t.title_basics.genres, 
       c.name, c.birthYear, c.deathYear, c.primaryProfession, c.knownForTitles
FROM title_basics t
JOIN name_basics c ON t.title_basics.directors = c.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Comedy%' AND t.startYear > 2000
ORDER BY t.title_basics.averageRating DESC, t.title_basics.startYear DESC