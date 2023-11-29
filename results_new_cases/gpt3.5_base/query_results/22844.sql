SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.primaryTitle NOT IN ('Safe House  (2012)', 'Deadpool 2  (2018)', 'Inception (2010)', 'Natural Born Killers (1994)')
ORDER BY tr.averageRating DESC
LIMIT 5