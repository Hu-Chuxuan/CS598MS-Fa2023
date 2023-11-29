SELECT primaryTitle, startYear, averageRating, genres 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear >= 2015 
AND genres LIKE '%Action%' 
AND genres LIKE '%Adventure%' 
AND genres NOT LIKE '%Sci-Fi%' 
AND primaryTitle NOT IN ('San Andreas  (2015)', '2012  (2009)', 'Thor: Ragnarok (2017)') 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 5