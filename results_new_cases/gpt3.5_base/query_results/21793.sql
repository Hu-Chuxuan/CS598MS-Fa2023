SELECT tb.primaryTitle AS recommendation
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Scarface  (1983)', 'The Orphanage  (2007)', 'American Beauty  (1999)', 'Fight Club (1999)', 'A Beautiful Mind  (2001)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5
