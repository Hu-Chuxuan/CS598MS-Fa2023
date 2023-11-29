SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t3.primaryName
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryName = t3.primaryName
WHERE t2.averageRating > 7 AND t1.genres LIKE '%romantic comedy%' AND t3.birthYear > 1960
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE t1.tconst = title_principals.tconst AND category = 'comedy' AND job = 'actor')
AND NOT EXISTS (SELECT 1 FROM title_crew WHERE t1.tconst = title_crew.tconst AND job = 'director')
ORDER BY t2.averageRating DESC, t1.startYear ASC