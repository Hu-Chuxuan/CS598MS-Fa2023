SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Click', 'The Incredibles')
AND tr.averageRating >= 7.5
ORDER BY tr.averageRating DESC
LIMIT 5