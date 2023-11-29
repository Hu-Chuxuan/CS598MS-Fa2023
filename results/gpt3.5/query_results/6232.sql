SELECT tb.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.startYear >= 2000
AND tb.originalTitle NOT IN ('X-Men', 'Spider-Man: Homecoming')
AND nb.primaryName LIKE '%Marvel%'
ORDER BY tr.averageRating DESC
LIMIT 5