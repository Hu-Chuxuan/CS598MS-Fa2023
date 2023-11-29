SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Thiller%'
AND tb.titleType ='movie'
AND tr.averageRating > 7.5
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Vanilla Sky (2001)%'
AND nb.knownForTitles LIKE '%Monster (2003)%'
AND nb.knownForTitles LIKE '%Bridget Jones%s Diary (2001)%'
AND nb.knownForTitles LIKE '%Being John Malkovich (1999)%'

ORDER BY tr.averageRating DESC, tb.startYear DESC