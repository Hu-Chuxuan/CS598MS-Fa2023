SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Drama%' 
OR genres LIKE '%Thriller%'
AND primaryTitle != 'Oldboy (2003)'
AND (primaryTitle != 'Amélie (2001)' OR primaryTitle != 'Life Is Beautiful (1997)')
ORDER BY averageRating DESC
LIMIT 5