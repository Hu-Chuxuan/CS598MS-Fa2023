SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle LIKE '%Spiderman%'
AND primaryTitle NOT LIKE '%TV%'
AND startYear >= 2010
AND genres LIKE '%Action%'
AND genres LIKE '%Adventure%'
ORDER BY averageRating DESC
LIMIT 5