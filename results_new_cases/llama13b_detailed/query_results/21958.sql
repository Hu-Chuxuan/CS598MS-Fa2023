SELECT t1.title, t1.tconst, t2.title, t2.tconst, t3.title, t3.tconst, t4.title, t4.tconst, t5.title, t5.tconst, t6.title, t6.tconst
FROM title_basics t1
JOIN title_principals t2 ON t1.tconst = t2.tconst
JOIN title_crew t3 ON t1.tconst = t3.tconst
JOIN title_ratings t4 ON t1.tconst = t4.tconst
JOIN name_basics t5 ON t2.nconst = t5.nconst
JOIN name_basics t6 ON t3.nconst = t6.nconst
WHERE t1.primaryTitle LIKE '%Terminator%'
AND t2.category = 'actor'
AND t3.category = 'director'
AND t4.averageRating > 7
AND t5.primaryProfession LIKE '%actor%'
AND t6.primaryProfession LIKE '%actor%'
ORDER BY t1.startYear DESC, t1.endYear DESC, t1.runtimeMinutes DESC