SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Pain & Gain (2013)', 'Faster  (2010)', 'Deepwater Horizon  (2016)', 'Deadpool  (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5