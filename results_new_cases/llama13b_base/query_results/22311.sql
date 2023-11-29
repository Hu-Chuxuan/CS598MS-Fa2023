SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.primaryName, t3.category, t4.job
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
JOIN title_principals t4 ON t1.tconst = t4.tconst
WHERE t2.averageRating > 7 AND t1.genres LIKE '%comedy%'
AND t3.primaryProfession = 'Actor'
AND t4.job = 'Actor'
AND t1.startYear > 1990
AND t1.endYear < 2020
AND t1.runtimeMinutes > 90

LIMIT 5