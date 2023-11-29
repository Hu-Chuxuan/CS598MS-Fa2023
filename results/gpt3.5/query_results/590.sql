SELECT t1.primaryTitle, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN title_principals t3 ON t1.tconst = t3.tconst
JOIN name_basics n ON t3.nconst = n.nconst
WHERE n.primaryName = 'Sandra Bullock'
AND t1.titleType = 'movie'
AND t1.startYear > 1999
AND t1.primaryTitle NOT LIKE '%Miss Congeniality%'
AND t1.primaryTitle != 'Forces of Nature'
AND t2.averageRating > 6
ORDER BY t2.averageRating DESC
LIMIT 5