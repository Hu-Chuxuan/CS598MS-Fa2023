SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear = 2002
AND nb.primaryProfession LIKE '%actor%'
AND EXISTS (
    SELECT 1 FROM title_principals tp
    WHERE tp.tconst = tb.tconst
    AND tp.category = 'actor'
    AND tp.job LIKE '%Dwayne%Johnson%'
)
AND NOT EXISTS (
    SELECT 1 FROM title_principals tp
    WHERE tp.tconst = tb.tconst
    AND tp.category = 'actor'
    AND tp.job LIKE '%Dwayne%Johnson% AND NOT (tr.averageRating < 5 OR tr.numVotes < 1000)
ORDER BY tr.averageRating DESC