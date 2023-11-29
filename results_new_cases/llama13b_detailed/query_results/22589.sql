SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Horror%'
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%The Shape of Water%'))
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Shape of Water%'