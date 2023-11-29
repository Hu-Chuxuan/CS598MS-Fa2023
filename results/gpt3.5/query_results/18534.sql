SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%' 
AND tb1.startYear > 1990
AND tb1.startYear < 2000
AND tb1.tconst NOT IN ('tt0113041') -- Excluding "Father of the Bride (1991)"
ORDER BY tr.averageRating DESC
LIMIT 5