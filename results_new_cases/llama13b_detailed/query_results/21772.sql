SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_ratings tr ON t.tconst = tr.tconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Drama%' AND tr.averageRating > 7
ORDER BY tr.averageRating DESC
LIMIT 5