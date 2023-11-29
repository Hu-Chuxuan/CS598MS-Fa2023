SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle NOT IN ('X-Men  (2000)', 'The Greatest Showman (2017)')
AND genres LIKE '%Musical%'
AND startYear >= 2010
ORDER BY averageRating DESC
LIMIT 5