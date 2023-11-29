SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear BETWEEN 2010 AND 2018 
AND tb.tconst NOT IN ('tt2015381', 'tt4877122')
ORDER BY tr.averageRating DESC
LIMIT 5