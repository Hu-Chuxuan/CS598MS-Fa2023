SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.directors = tc.directors
JOIN title_principals tp ON tb.ordering = tp.ordering
WHERE tb.genres = 'Comedy'
AND tp.category = 'Actor'
AND tp.job = 'Lead'
AND tp.characters LIKE '%funny%'
AND tr.averageRating > 7
AND tr.numVotes > 1000
AND NOT EXISTS (SELECT 1 FROM title_basics tb2 WHERE tb2.tconst = tb.tconst AND tb2.endYear > 2020)
ORDER BY tr.averageRating DESC, tp.job ASC