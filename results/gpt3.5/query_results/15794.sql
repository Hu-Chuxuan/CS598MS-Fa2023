SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Children%' AND primaryTitle NOT IN ('Beauty and the Beast (2017)', 'Cars (2006)', 'Lou')
ORDER BY averageRating DESC
LIMIT 5