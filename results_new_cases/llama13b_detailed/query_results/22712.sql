SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType ='movie' AND tb.startYear = 1982 AND tb.genres LIKE '%Science Fiction'
AND nb.primaryProfession LIKE '%Actor' AND nb.knownForTitles LIKE '%Blade Runner'
AND tc.directors LIKE '%Ridley Scott' AND tp.category LIKE '%Director'
AND tp.job LIKE '%Director'
ORDER BY tp.job, tp.characters