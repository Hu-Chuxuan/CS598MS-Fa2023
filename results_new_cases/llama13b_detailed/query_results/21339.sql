SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE nb.primaryProfession LIKE '%actor%'
AND tb.primaryTitle LIKE '%Sandra Bullock%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC