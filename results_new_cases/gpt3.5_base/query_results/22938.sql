SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%comedies%'
AND tb.primaryTitle != 'Full Metal Jacket (1987)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5