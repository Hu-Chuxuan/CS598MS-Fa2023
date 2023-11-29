SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear = 2018
AND tc.directors = 'nm0085156' -- Directed by the same person who directed Avengers: Infinity War (2018)
AND tp.category = 'actor'
AND nb.primaryName = 'Robert Downey Jr'
AND nb.knownForTitles = 'tt0053137,tt00319' -- Known for Iron Man and Avengers series