SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
INNER JOIN title_crew tc ON tb.directors = tc.directors
INNER JOIN title_principals tp ON tb.ordering = tp.ordering
WHERE tb.genres = 'Action'
AND tp.category = 'Actor'
AND tp.job = 'Lead'
AND tp.characters = 'Exciting'
AND tr.averageRating > 7
AND tb.startYear = 1990
AND tb.endYear = 2015
AND tb.runtimeMinutes > 120

