SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE '%Animation%' 
AND startYear >= 2010 
AND startYear <= 2022 
AND averageRating >= 7 
AND (primaryTitle NOT IN ('The Incredibles (2004)', 'Wreck-It Ralph (2012)') 
OR primaryTitle IS NULL) 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 5