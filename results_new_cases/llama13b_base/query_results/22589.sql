SELECT t1.title_basics.primaryTitle, t1.title_basics.startYear, t1.title_basics.genres
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_basics.tconst = t2.tconst
JOIN name_basics t3 ON t1.title_basics.directors = t3.nconst
JOIN title_principals t4 ON t1.title_basics.tconst = t4.tconst
WHERE t2.averageRating > (SELECT AVG(t5.averageRating) FROM title_ratings t5 WHERE t5.tconst IN (SELECT t4.tconst FROM title_principals t4 WHERE t4.category = 'Horror'))
AND t1.genres LIKE '%Horror%'
AND t3.primaryProfession = 'Director'
AND t4.job = 'Director'
AND t4.category = 'Horror'
AND t1.startYear BETWEEN 2010 AND 2019
ORDER BY t2.averageRating DESC, t1.startYear DESC