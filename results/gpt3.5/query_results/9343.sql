SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Drama%'
AND tb1.startYear >= 1990
AND tb1.startYear < 2000
AND tb1.tconst NOT IN ('tt0111161', 'tt0068646')  -- Excluding the previously suggested films
ORDER BY tr.averageRating DESC
LIMIT 5