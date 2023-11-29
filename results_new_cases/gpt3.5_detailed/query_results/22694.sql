SELECT t1.primaryTitle, t1.startYear, t1.runtimeMinutes, t2.averageRating
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.titleType = 'movie'
AND t1.genres LIKE '%Horror%'
AND t1.startYear >= 1980
AND t1.tconst NOT IN ('tt1440249', 'tt0244880', 'tt0096028', 'tt1431045', 'tt0859635')