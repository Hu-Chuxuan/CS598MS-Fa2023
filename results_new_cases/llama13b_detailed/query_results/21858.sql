SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle LIKE '%Dumb and Dumber%'
AND tb.primaryTitle LIKE '%Superbad%'
AND nb.primaryName NOT LIKE '%Deadpool%'
ORDER BY tr.averageRating DESC, tb.startYear DESC