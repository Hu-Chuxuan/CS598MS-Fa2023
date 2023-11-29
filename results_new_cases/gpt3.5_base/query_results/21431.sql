SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
ORDER BY tr.averageRating DESC