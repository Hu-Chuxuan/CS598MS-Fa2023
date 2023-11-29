SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Crime%'
AND startYear > 2000
AND primaryTitle NOT IN ('The Proposal', 'La La Land')
ORDER BY averageRating DESC
LIMIT 5