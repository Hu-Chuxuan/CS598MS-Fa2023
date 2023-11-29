SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' OR genres LIKE '%Comedy'
AND primaryTitle NOT IN ('The Nutty Professor', 'Overboard', 'Private Benjamin', 'Bad Moms')
ORDER BY averageRating DESC
LIMIT 10