SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres 
FROM title_basics tb 
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Romance%') 
AND tb.startYear <= 1989 
AND tr.averageRating >= 7 
AND tb.tconst NOT IN ('tt0098384', 'tt0343314', 'tt0126886')
ORDER BY tr.numVotes DESC
LIMIT 5