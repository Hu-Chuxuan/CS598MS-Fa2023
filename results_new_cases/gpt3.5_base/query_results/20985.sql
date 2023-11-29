SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'documentary'
AND primaryTitle NOT IN ('Making a Murderer', 'Super Size Me (2004)')
ORDER BY averageRating DESC
LIMIT 5