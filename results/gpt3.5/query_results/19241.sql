SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Adventure%'
AND tb.startYear > 2014
AND tb.tconst NOT IN ('tt2015381', 'tt0848228', 'tt3501632', 'tt0848228') 
ORDER BY tr.averageRating DESC
LIMIT 5