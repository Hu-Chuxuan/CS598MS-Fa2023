SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_crew AS tc ON tb1.tconst = tc.tconst
WHERE tb1.genres LIKE '%Adventure%'
AND tb1.startYear < 1995
AND tb1.tconst NOT IN ('tt0112384')
ORDER BY tr.averageRating DESC
LIMIT 1