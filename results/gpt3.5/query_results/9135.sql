SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, 
       tr.averageRating AS rating, tb1.genres AS genres
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.primaryTitle != 'The Devil Wears Prada'
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear > 2000
AND nb.primaryName LIKE '%young woman%'
AND nb.primaryProfession LIKE '%model%'
AND tp.category = 'actress'
GROUP BY tb1.primaryTitle, tb1.startYear, tr.averageRating, tb1.genres
ORDER BY tr.averageRating DESC
LIMIT 5