SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0 AND tb.genres LIKE '%Animation%'
AND tc.directors = 'nm0085156'
AND tp.category = 'actor'
AND nb.primaryName LIKE '%Incredibles%'
AND nb.knownForTitles LIKE '%Zootopia%'
ORDER BY tb.startYear DESC, tb.runtimeMinutes DESC