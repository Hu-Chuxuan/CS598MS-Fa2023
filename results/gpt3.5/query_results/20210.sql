SELECT primaryTitle, startYear, averageRating, genres 
FROM title_basics 
JOIN title_ratings 
ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear >= 2000 
AND genres LIKE '%Comedy%' 
AND averageRating >= 7 
AND primaryTitle NOT IN ('Big Fish (2003)', 'The Hangover (2009)', 'The Lord of the Rings ', 'Sisters  (2015)')
ORDER BY averageRating DESC, startYear DESC 
LIMIT 5