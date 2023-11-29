SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tb.primaryName = nb.primaryName
INNER JOIN title_crew tc ON tb.directors = tc.directors
INNER JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tr.averageRating > (
    SELECT AVG(tr2.averageRating)
    FROM title_ratings tr2
    WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE primaryName = 'Jim Carrey')
)
AND tb.genres LIKE '%comedy%'
AND tb.startYear BETWEEN 1990 AND 2010
AND tb.endYear BETWEEN 1990 AND 2010
AND tp.category = 'actor'
AND tp.job = 'lead'
AND tp.characters LIKE '%funny%'

