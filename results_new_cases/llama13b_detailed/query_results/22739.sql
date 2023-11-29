SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_ratings tr ON t.tconst = tr.tconst
WHERE n.primaryProfession LIKE '%actor%'
AND tr.averageRating > 7
AND t.genres LIKE '%sci-fi%'
ORDER BY tr.averageRating DESC