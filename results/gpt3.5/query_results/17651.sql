SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND startYear IN ('1994','1997') 
AND primaryTitle NOT IN ('Speed','Blown Away',"The Devil's Own")
ORDER BY averageRating DESC
LIMIT 2