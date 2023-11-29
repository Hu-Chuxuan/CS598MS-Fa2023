SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.primaryTitle NOT IN ("You Don't Mess with the Zohan (2008)", 'Click  (2010)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5