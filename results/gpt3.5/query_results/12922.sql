SELECT t1.primaryTitle, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Action%'
AND t1.runtimeMinutes >= 90
AND t2.averageRating >= 7
AND t1.primaryTitle NOT IN ('The Hunger Games (2012)')
ORDER BY t2.averageRating DESC
LIMIT 5