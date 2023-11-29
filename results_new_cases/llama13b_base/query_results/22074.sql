SELECT t.title, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.tconst
WHERE t.genres = 'Drama' AND t.startYear = 2011 AND t.runtimeMinutes > 90
AND tr.averageRating > 7 AND tr.numVotes > 1000
AND n.birthYear = 1980 AND n.deathYear = 1980
AND c.category = 'Actor' AND c.job = 'Lead'
AND c.characters LIKE '%Ryan Gosling%'
ORDER BY tr.averageRating DESC, t.primaryTitle ASC