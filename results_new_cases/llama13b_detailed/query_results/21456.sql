SELECT * FROM title_basics t
JOIN title_crew tc ON t.tconst = tc.tconst
JOIN title_principals tp ON t.tconst = tp.tconst
JOIN name_basics n ON tp.nconst = n.nconst
WHERE t.titleType ='movie' AND t.startYear = 1986 AND t.genres LIKE '%Action%' AND t.genres LIKE '%Adventure%'
AND tc.directors = 'nm0085156' -- Sean Connery
AND tp.category = 'actor' AND tp.job = 'The Highlander'
AND n.primaryName = 'Sean Connery'
AND n.knownForTitles = 'tt0053137,tt00319'
ORDER BY t.averageRating DESC, numVotes DESC