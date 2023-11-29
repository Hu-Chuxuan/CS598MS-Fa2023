SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS average_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2011
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('August: Osage County', 'The Post')
ORDER BY tr.averageRating DESC
LIMIT 5