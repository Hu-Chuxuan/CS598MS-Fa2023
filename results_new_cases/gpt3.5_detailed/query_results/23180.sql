SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_crew AS tc ON tb.tconst = tc.tconst
WHERE tb.startYear > 2010 
AND tb.titleType = 'movie' 
AND tb.genres LIKE '%Drama%' 
AND tb.tconst NOT IN ('tt1895587', 'tt6294822') 
AND tc.directors = (SELECT directors FROM title_crew WHERE tconst = 'tt1895587')
ORDER BY tr.averageRating DESC
LIMIT 5