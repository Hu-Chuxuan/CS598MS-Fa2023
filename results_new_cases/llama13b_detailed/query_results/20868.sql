SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.endYear > '2000-01-01' AND tb.startYear < '2020-01-01'
AND nb.primaryProfession = 'actor' AND nb.knownForTitles = 'Click (2010)', 'American Pie (1999)', 'Scary Movie (2000)'
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC