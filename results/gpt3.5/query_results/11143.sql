SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Adventure%' 
AND startYear >= 2000 
AND startYear <= 2005 
AND titleType = 'movie'
AND primaryTitle != 'The Lord of the Rings: The Return of the King'
AND primaryTitle != "Lemony Snicket's A Series of Unfortunate Events"
AND primaryTitle != 'The Chronicles of Narnia: The Lion, the Witch and the Wardrobe'
ORDER BY averageRating DESC
LIMIT 5