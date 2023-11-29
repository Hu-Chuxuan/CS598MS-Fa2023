SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.nconst = name_basics.nconst
WHERE title_basics.titleType ='movie'
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE titleType ='movie' AND startYear = 2010)
AND name_basics.primaryName IN ('Emma Stone', 'Penn Badgley')
AND title_basics.originalTitle = 'Easy A'
ORDER BY title_ratings.averageRating DESC