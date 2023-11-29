SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Sci-Fi%'
AND startYear >= 2010
AND tconst NOT IN ('tt5580036', 'tt5099184', 'tt0062855')
ORDER BY averageRating DESC
LIMIT 5