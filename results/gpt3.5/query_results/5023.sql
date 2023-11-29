SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Comedy%'
AND title_basics.startYear >= 1995
AND title_basics.startYear < 2008
AND title_basics.tconst != 'tt0120484' -- exclude 'The Waterboy (1998)'
AND title_basics.tconst NOT IN ('tt0251127', 'tt6211196', 'tt4281056', 'tt1460039', 'tt4701724') -- exclude previous preferences
ORDER BY averageRating DESC
LIMIT 5