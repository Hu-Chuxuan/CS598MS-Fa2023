SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 1990 
AND tb.startYear <= 2000 
AND tb.primaryTitle != 'Four Weddings and a Funeral (1994)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5