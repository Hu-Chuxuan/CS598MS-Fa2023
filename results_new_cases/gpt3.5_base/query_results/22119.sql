SELECT tb.primaryTitle AS recommended_movie, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Romance%'
AND tb.primaryTitle NOT IN ('Sarah, Plain and Tall ', 'The Seventh Sign (1988)', 'The Prophecy (1995)', 'Pulp Fiction (1994)', 'The Dead Zone  (1983)')
ORDER BY tr.averageRating DESC
LIMIT 5