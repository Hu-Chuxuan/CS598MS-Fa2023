SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10