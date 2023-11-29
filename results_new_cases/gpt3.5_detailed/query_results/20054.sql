SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND titleType = 'movie'
AND primaryTitle NOT IN ('Son of the Mask (2005)', "You Don't Mess with the Zohan (2008)", 'Click  (2006)')
ORDER BY averageRating DESC
LIMIT 10