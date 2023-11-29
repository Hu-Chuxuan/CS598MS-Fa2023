SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear = 1999
AND tb.endYear = 2006
AND tc.directors = 'nm0005690'
AND nb.primaryName = 'The Matrix'
AND nb.knownForTitles = 'tt0053137'
ORDER BY tb.runtimeMinutes DESC, tp.ordering ASC