SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Adventure%' 
AND tb.genres LIKE '%Sci-Fi%'
AND tb.primaryTitle NOT LIKE '%Avengers%'
AND tb.primaryTitle NOT LIKE '%Iron Man%'
AND tb.primaryTitle NOT LIKE '%Thor%'
AND tb.primaryTitle NOT LIKE '%Captain America%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5