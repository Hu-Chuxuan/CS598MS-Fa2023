SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear = 1984 
AND tb.primaryTitle NOT LIKE '%Amadeus%'
AND tr.averageRating >= 7
ORDER BY tr.numVotes DESC
LIMIT 5