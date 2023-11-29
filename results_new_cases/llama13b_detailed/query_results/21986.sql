SELECT * FROM title_basics
WHERE 
(
    (titleType ='movie' AND genres LIKE '%Horror%')
    OR (titleType ='short' AND genres LIKE '%Horror%')
)
AND (
    (primaryTitle LIKE '%The Possession%' OR primaryTitle LIKE '%Evil Dead%')
    OR (originalTitle LIKE '%The Possession%' OR originalTitle LIKE '%Evil Dead%')
)
ORDER BY averageRating DESC, numVotes DESC