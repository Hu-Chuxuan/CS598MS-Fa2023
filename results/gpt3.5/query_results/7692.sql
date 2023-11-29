SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Religious%' AND titleType = 'movie'
AND primaryTitle NOT IN ('The Ten Commandments  (2007)', 'The Passion of the Christ (2004)')
ORDER BY averageRating DESC
LIMIT 5