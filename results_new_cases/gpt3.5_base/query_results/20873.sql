SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Musical%')
AND tb.primaryTitle NOT IN ('Grease', 'Dreamgirls')
ORDER BY tr.averageRating DESC
LIMIT 5