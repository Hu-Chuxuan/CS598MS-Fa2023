SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%thriller%' AND tr.averageRating > 7 AND nb.primaryProfession LIKE '%actor%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC
LIMIT 5