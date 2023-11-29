SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings USING (tconst)
WHERE titleType = 'movie'
AND startYear <= 2010
AND primaryTitle NOT IN ('The Prestige', 'Prisoners', 'Seven', 'The Illusionist')
AND genres NOT LIKE '%Subtitles%'
ORDER BY averageRating DESC
LIMIT 5