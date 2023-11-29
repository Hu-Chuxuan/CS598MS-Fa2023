SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' AND tb.startYear > 2017
ORDER BY tr.averageRating DESC
LIMIT 5