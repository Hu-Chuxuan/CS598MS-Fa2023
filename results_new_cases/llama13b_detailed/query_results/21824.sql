SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.directors = 'nm0085156' -- James Cameron
AND tp.category = 'director'
AND tp.job = 'director'
AND tb.titleType ='movie'
AND tb.startYear = 2012
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Adventure%'
AND tp.knownForTitles LIKE '%Titanic%'