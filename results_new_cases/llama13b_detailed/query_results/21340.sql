SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Science Fiction%'
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.nconst = nb.nconst)
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Matrix (1999)%'
AND nb.knownForTitles LIKE '%28 Days Later (2002)%'
ORDER BY tr.averageRating DESC