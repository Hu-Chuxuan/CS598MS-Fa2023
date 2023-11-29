SELECT primaryTitle 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Family%' 
AND startYear >= 2000 
AND startYear <= 2010 
AND titleType = 'tvSeries' 
AND averageRating >= 7.5 
AND numVotes >= 10000