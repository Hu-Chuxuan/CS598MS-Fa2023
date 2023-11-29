SELECT DISTINCT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%' 
AND tb1.genres LIKE '%Action%'
AND (tb1.primaryTitle NOT LIKE '%Thor: Ragnarok%' 
AND tb1.primaryTitle NOT IN ('Spider-Man', 'The Dark Knight Rises', 'The Dark Knight'))
AND tr.averageRating >= 7
AND tb1.startYear <= 2017
ORDER BY tr.numVotes DESC
LIMIT 5