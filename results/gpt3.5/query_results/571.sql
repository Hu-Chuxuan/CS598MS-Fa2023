SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.genres LIKE '%Music%'
AND tb.startYear > 2012
AND tr.averageRating > 7
AND (tb.primaryTitle NOT IN ('School of Rock (2003)', 'Rock of Ages  (2012)'))
ORDER BY tr.numVotes DESC
LIMIT 5