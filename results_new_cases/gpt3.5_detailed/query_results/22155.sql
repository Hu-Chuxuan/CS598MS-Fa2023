SELECT primaryTitle, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' AND genres LIKE '%Action%' 
AND primaryTitle NOT IN ('Scream  (1996)', 'Annabelle  (2014)', 'The Sixth Sense (1999)')
ORDER BY averageRating DESC
LIMIT 5