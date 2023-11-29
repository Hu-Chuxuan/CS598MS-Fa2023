SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Thriller%' AND startYear >= 2010 AND startYear <= 2015
AND tconst NOT IN ('tt3065204', 'tt0208092', 'tt0910936')
ORDER BY averageRating DESC
LIMIT 5