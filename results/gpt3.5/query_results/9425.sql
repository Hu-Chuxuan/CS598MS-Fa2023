SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Furious 7', 'Transporter 2', 'Mad Max: Fury Road', 'Independence Day', 'Bad Boys')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5