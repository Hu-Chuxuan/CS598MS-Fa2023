SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' OR genres LIKE '%Comedy%'
AND averageRating >= 7
AND primaryTitle NOT IN ('The Nutty Professor  (1996)', 'Overboard  (1987)', 'Private Benjamin  (1980)', 'Bad Moms (2016)')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10