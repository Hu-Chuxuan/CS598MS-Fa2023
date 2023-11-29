SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.name, t2.birthYear, t2.primaryProfession, t3.job, t3.characters
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.title
JOIN title_crew t3 ON t1.tconst = t3.tconst
WHERE t1.titleType = 'feature'
AND t1.isAdult = 'no'
AND t1.startYear = 1986
AND t1.runtimeMinutes > 90
AND t2.knownForTitles LIKE '%Brighton Beach Memoirs%'
AND t3.job = 'actor'
AND t3.characters LIKE '%Shrew%'
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.name, t2.birthYear, t2.primaryProfession, t3.job, t3.characters
HAVING COUNT(*) > (SELECT COUNT(*) FROM title_ratings WHERE user_id =? AND title_id = t1.tconst)
ORDER BY COUNT(*) DESC