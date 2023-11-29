SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear BETWEEN 1980 AND 1990
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Horror%'
AND tr.averageRating > 5
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The 'Burbs (1989)%'
ORDER BY tr.averageRating DESC