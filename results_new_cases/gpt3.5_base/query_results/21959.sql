SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Zombie%'
AND tb.primaryTitle NOT IN ('Saving Private Ryan (1998)', 'The Inglorious Bastards (1978)', '28 Days Later (2002)')
ORDER BY tr.averageRating DESC
LIMIT 5