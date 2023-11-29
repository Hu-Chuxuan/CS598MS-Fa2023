SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType ='movie'
AND tb.isAdult = 0
AND tb.startYear < 2010
AND tb.endYear > 2010
AND tb.runtimeMinutes > 120
AND tp.category = 'actor'
AND tr.averageRating > 7
AND tr.numVotes > 1000
AND nb.primaryProfession = 'actor'
AND nb.knownForTitles = 'tt0053137,tt00319'
AND tc.directors = 'nm0005690'
AND tc.writers = 'nm0085156'
AND tp.characters = '[""Assistant""]'

ORDER BY tr.averageRating DESC, tp.job ASC