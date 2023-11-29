SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' OR genres LIKE '%Romance%'
AND primaryTitle NOT IN ('Sarah, Plain and Tall', 'The Seventh Sign', 'The Prophecy', 'Pulp Fiction', 'The Dead Zone')
ORDER BY averageRating DESC
LIMIT 5