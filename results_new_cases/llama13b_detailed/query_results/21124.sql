SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.startYear = 2018
AND nb.primaryProfession LIKE '%actor%'
AND nb.knownForTitles LIKE '%Black Panther%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC