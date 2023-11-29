SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Shallow Hal', 'The Holiday', 'There\'s Something About Mary')
ORDER BY tr.averageRating DESC
LIMIT 5