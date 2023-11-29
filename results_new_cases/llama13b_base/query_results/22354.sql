SELECT t.title, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       r.averageRating, r.numVotes, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles,
       c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryTitle
JOIN title_crew c ON t.tconst = c.tconst
WHERE t.genres = 'comedy'
AND r.averageRating > 7
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE t.tconst = title_principals.tconst AND category = 'actor' AND job = 'director')
ORDER BY r.averageRating DESC, t.startYear DESC