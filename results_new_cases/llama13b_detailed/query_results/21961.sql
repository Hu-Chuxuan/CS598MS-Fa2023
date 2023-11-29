SELECT t1.title, t1.tconst, t2.title, t2.tconst, t3.title, t3.tconst, t4.title, t4.tconst, t5.title, t5.tconst
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN title_principals t3 ON t1.tconst = t3.tconst
JOIN title_crew t4 ON t1.tconst = t4.tconst
JOIN title_basics t5 ON t1.tconst = t5.tconst
WHERE t2.averageRating > (SELECT AVG(t6.rating) FROM title_ratings t6 WHERE t6.title IN (SELECT t4.title FROM title_crew WHERE t4.tconst = 'tt0053137'))
AND t3.category = 'actor'
AND t4.directors = 'nm0005690'
AND t5.primaryName = 'Fred Astaire'
AND t1.genres LIKE '%Drama%'
AND t1.isAdult = 0
ORDER BY t2.averageRating DESC, t1.startYear DESC