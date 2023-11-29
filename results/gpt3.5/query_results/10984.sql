SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle NOT IN ('The Princess Bride', 'Groundhog Day', 'The Nutty Professor')
AND startYear <= 1993
AND genres LIKE '%Comedy%'
ORDER BY averageRating DESC
LIMIT 5