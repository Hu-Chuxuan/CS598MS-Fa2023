SELECT tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' 
AND tb.startYear = 1999
AND tb.primaryTitle NOT LIKE '%Sixth Sense%'
AND tb.primaryTitle NOT IN ('Jumanji (1995)', 'Stir of Echoes (1999)', 'Slum  (2013)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5