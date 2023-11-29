SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.isAdult = 0
AND tb.startYear BETWEEN 1980 AND 2005
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Adventure%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Dumb and Dumber%'
AND nb.knownForTitles LIKE '%Super Troopers%'
AND tr.averageRating > 6
ORDER BY tr.averageRating DESC