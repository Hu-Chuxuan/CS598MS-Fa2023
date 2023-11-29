SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Drama%'
AND tb.isAdult = 0
AND tp.category = 'actor'
AND tp.job = 'leading'
AND tp.characters NOT LIKE '%animated%'
AND tc.directors NOT LIKE '%animated%'
AND tc.writers NOT LIKE '%animated%'
AND nb.primaryProfession LIKE '%actor%'
AND nb.knownForTitles LIKE '%Beloved (1998)%'
AND nb.knownForTitles LIKE '%The Color Purple (1985)%'
ORDER BY tb.startYear DESC, tb.runtimeMinutes DESC