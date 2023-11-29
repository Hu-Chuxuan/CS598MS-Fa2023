SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear BETWEEN 1990 AND 2017
AND tb.genres LIKE '%War%'
AND tr.averageRating > 7
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Saving Private Ryan%'
AND nb.knownForTitles LIKE '%Black Hawk Down%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC
LIMIT 10