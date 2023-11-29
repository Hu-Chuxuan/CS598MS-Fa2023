SELECT tb1.tconst, tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Mystery%' 
AND tb1.startYear > 2010 
AND tb1.tconst NOT IN ('tt2267998', 'tt3631112', 'tt3402236')
ORDER BY tr.averageRating DESC
LIMIT 5