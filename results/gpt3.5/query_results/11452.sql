SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.runtimeMinutes AS duration_minutes, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tp.tconst = tb1.tconst
JOIN name_basics AS nb ON nb.nconst = tp.nconst
WHERE nb.primaryName = 'Adam Sandler' 
AND tb1.startYear > 2000 
AND tb1.titleType = 'movie' 
AND tb1.genres LIKE '%Comedy%'
AND tb1.tconst NOT IN ('tt0328532', 'tt0094737', 'tt0338337', 'tt0076759')