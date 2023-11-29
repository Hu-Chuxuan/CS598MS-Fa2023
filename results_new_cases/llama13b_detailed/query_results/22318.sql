SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.nconst, t2.job, t2.characters
FROM title_basics t1
JOIN title_crew t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Drama%'
AND t2.job = 'actor'
AND t2.characters!= '[""]'
AND t1.primaryTitle LIKE '%The Martian%'
ORDER BY t1.startYear DESC