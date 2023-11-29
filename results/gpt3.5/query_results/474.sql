SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%'
AND primaryTitle NOT IN ('The Number 23 (2007)', 'The Sixth Sense (1999)', 'Annabelle  (2014)', "Child's Play  (1988)", 'The Silence of the Lambs  (1991)', 'Curse of Chucky (2013)')
ORDER BY averageRating DESC
LIMIT 5