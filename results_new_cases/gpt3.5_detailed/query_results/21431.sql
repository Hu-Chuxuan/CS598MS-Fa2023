SELECT tb1.primaryTitle, tb1.startYear, tb2.averageRating
FROM title_basics tb1
JOIN title_ratings tb2 ON tb1.tconst = tb2.tconst
WHERE tb1.genres LIKE '%Horror%'
AND tb1.startYear <= 1991
AND tb2.averageRating >= 8
AND tb1.tconst NOT IN ('tt0068646')