SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear BETWEEN 1980 AND 1999
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Adventure%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Sandlot%'
AND nb.knownForTitles LIKE '%Stand by Me%'
AND nb.knownForTitles LIKE '%The Goonies%'
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC