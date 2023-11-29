SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 2018
AND tb.genres LIKE '%Action%'
ORDER BY tr.averageRating DESC
LIMIT 5