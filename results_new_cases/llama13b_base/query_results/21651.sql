SELECT t1.title, t1.averageRating, t1.numVotes, t2.name, t2.primaryProfession, t3.category, t4.job, t5.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
JOIN title_crew t4 ON t1.tconst = t4.tconst
JOIN title_principals t5 ON t1.tconst = t5.tconst
WHERE t1.genres LIKE '%comedy%'
AND t2.averageRating > (
    SELECT AVG(t6.rating)
    FROM title_ratings t6
    WHERE t6.nconst IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'Actor')
    AND t6.tconst = t1.tconst
)
AND t3.primaryProfession NOT IN (SELECT primaryProfession FROM name_basics WHERE birthYear > 1980)
AND t4.job NOT IN (SELECT job FROM title_principals WHERE category = 'Director')
AND t5.characters NOT IN (SELECT characters FROM title_principals WHERE job = 'Actor')
ORDER BY t1.averageRating DESC