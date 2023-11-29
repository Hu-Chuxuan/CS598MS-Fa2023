SELECT * FROM title_basics t
JOIN title_crew tc ON t.tconst = tc.tconst
JOIN title_principals tp ON t.tconst = tp.tconst
JOIN name_basics n ON tp.nconst = n.nconst
WHERE t.titleType ='movie' AND t.isAdult = 0
AND (
    t.genres LIKE '%Adventure%' OR
    t.genres LIKE '%Fantasy%' OR
    t.genres LIKE '%Comedy%'
)
AND tc.directors = 'nm0085156'
AND n.primaryName = 'Fred Astaire'
AND n.knownForTitles = 'tt00319,tt0053137'
ORDER BY t.startYear DESC