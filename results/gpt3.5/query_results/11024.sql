SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Adventure%' 
AND startYear BETWEEN 2010 AND 2020
AND tconst != 'tt1663202'