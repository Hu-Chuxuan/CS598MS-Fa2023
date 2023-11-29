SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t3.primaryName
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
WHERE t1.genres = 'Comedy'
AND t2.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE nconst IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'Actor'))
AND t3.knownForTitles IN (SELECT title FROM name_basics WHERE primaryProfession = 'Actor')
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE tconst = t1.tconst AND category = 'Actor')
AND NOT EXISTS (SELECT 1 FROM title_crew WHERE tconst = t1.tconst AND job = 'Director')
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE tconst = t1.tconst AND job = 'Actor')
AND NOT EXISTS (SELECT 1 FROM title_crew WHERE tconst = t1.tconst AND job = 'Writer')

ORDER BY t2.averageRating DESC, t1.startYear DESC