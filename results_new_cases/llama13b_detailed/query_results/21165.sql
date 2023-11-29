SELECT *
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle = 'The Hangover'
AND nb.primaryName IN ('Maya Rudolph', 'Lindsay Lohan')
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC