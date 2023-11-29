SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Thriller%' AND startYear > 1990
AND primaryTitle NOT IN ('Red Dragon','Sherlock Holmes','The Silence of the Lambs')
ORDER BY averageRating DESC
LIMIT 3