SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle != 'La La Land'
AND startYear = 2016
AND genres LIKE '%Comedy%'
AND averageRating > 7
AND title_basics.tconst NOT IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Notebook')
LIMIT 5