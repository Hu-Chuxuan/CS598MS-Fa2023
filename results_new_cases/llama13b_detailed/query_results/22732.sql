SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0 AND tb.genres LIKE '%Horror%'
AND NOT EXISTS (SELECT 1 FROM title_basics tb2 WHERE tb2.tconst = tb.tconst AND tb2.titleType = 'war')
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Shining%' OR nb.knownForTitles LIKE '%The Witch%' OR nb.knownForTitles LIKE '%Resolution%'
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.nconst = nb.nconst)
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC