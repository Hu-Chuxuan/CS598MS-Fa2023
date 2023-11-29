SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' AND titleType = 'movie'
AND primaryTitle NOT IN ('Rush Hour', 'The Transporter', 'Deadpool 2', 'Hot Fuzz', 'Tropic Thunder')
ORDER BY averageRating DESC
LIMIT 5