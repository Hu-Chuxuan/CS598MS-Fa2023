SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Action%'
AND tb.startYear > 2000
AND tb.tconst NOT IN ('tt0408345', 'tt0770828', 'tt0816711') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5