SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND tb.startYear > 2010 
AND tb.tconst != 'tt3874544' -- exclude The Boss Baby
AND tb.tconst NOT IN ('tt0112641', 'tt0137523', 'tt0086250', 'tt0099685') -- exclude the user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5