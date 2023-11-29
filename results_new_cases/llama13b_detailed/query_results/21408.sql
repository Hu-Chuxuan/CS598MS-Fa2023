SELECT * FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Oprah'
AND tb.titleType ='movie'
AND tp.category = 'actor'
AND tp.job = 'actor'
AND tp.characters!= '\N'
ORDER BY tb.averageRating DESC, tp.numVotes DESC