SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tb.genres
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie' 
AND tr.averageRating >= 7 
AND tb.genres LIKE '%Comedy%'
AND nb.primaryName = 'Judd Apatow'
AND tb.primaryTitle NOT IN ('Superbad')
ORDER BY tr.averageRating DESC
LIMIT 5