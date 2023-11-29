SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror%'
AND nb.knownForTitles LIKE '%Pitch Perfect (2012)%'
AND nb.knownForTitles LIKE '%Mean Girls (2004)%'
AND nb.knownForTitles LIKE '%Legally Blonde (2001)%'
ORDER BY tr.averageRating DESC