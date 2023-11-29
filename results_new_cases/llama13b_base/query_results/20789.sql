SELECT t.title, t.tconst, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       r.averageRating, r.numVotes, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles, 
       c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.tconst
WHERE t.genres LIKE '%comedy%' AND r.averageRating > 6 AND n.knownForTitles LIKE '%comedy%'
GROUP BY t.tconst
HAVING COUNT(DISTINCT n.knownForTitles) > 2
ORDER BY r.averageRating DESC