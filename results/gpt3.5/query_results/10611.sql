SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 1970
AND genres LIKE '%War%'
AND primaryTitle NOT IN ('A Bridge Too Far', 'Patton')
ORDER BY averageRating DESC
LIMIT 5