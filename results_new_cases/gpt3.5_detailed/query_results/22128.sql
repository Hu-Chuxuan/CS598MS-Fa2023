SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Horror%' OR genres LIKE '%Action%' OR genres LIKE '%Comedy%')
AND primaryTitle NOT IN ('Star Wars: Episode VIII – The Last Jedi (2017)', 'The Departed (2006)', 'Star Wars')
ORDER BY averageRating DESC
LIMIT 10