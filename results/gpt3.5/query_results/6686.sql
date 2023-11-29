SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear = 2012
AND (genres LIKE '%Crime%' OR genres LIKE '%Thriller%')
AND title_basics.tconst != 'tt1355089'
ORDER BY averageRating DESC
LIMIT 1