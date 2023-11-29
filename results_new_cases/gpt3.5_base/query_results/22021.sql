SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres NOT LIKE '%Superhero%'
AND (tb.primaryTitle NOT IN ('Wolf Creek  (2005)', 'Hostel  (2011)'))
ORDER BY tr.averageRating DESC
LIMIT 5