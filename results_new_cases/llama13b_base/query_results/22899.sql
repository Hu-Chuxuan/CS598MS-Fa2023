SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres
FROM title_basics t1
JOIN title_ratings tr ON t1.tconst = tr.tconst
JOIN name_basics n1 ON t1.primaryTitle = n1.primaryName
WHERE n1.birthYear < 1970 AND n1.deathYear > 2000 AND tr.averageRating > 8 AND t1.genres LIKE '%thriller%'
ORDER BY t1.startYear DESC, t1.runtimeMinutes ASC