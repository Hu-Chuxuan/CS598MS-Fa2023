SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tr.averageRating >= 7
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Waterboys', 'The Little Mermaid')
LIMIT 5