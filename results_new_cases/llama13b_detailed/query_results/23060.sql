SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Jerry Maguire (1996)%'
AND nb.knownForTitles LIKE '%Field of Dreams (1989)%'
ORDER BY tr.averageRating DESC