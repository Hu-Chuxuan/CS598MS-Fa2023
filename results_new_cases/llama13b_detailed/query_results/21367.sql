SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Action'
AND tb.genres LIKE '%Thriller'
AND nb.primaryProfession LIKE '%Actor'
AND nb.knownForTitles LIKE '%Training Day'
AND nb.knownForTitles LIKE '%The Matrix'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC