SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' AND genres LIKE '%Action%' 
AND primaryTitle NOT IN ('Black Panther (2018)', 'I Now Pronounce You Chuck & Larry (2007)', 'Get Out (2017)')
ORDER BY averageRating DESC
LIMIT 5