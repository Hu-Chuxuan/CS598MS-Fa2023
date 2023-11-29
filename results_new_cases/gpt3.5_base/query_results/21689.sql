SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'The \'Burbs' AND startYear = 1989) 
AND startYear > 1980 
AND startYear < 1995 
AND averageRating > 7 
AND primaryTitle != 'The \'Burbs' 
AND primaryTitle != 'Battlefield Earth (2000)' 
ORDER BY averageRating DESC, startYear ASC