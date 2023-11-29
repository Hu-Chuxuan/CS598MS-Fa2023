SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear <= 2008
AND tb.endYear >= 2001
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Super Troopers (2001)%'
AND nb.knownForTitles LIKE '%Pineapple Express (2008)%'
ORDER BY tr.averageRating DESC