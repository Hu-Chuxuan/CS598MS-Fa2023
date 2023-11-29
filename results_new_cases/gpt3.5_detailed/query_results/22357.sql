SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Fantasy%'
AND tb.startYear > 2001
AND tb.tconst <> 'tt0120737'
ORDER BY tr.averageRating DESC
LIMIT 5