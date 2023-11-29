SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres NOT LIKE '%Superhero%'
AND tb.primaryTitle NOT LIKE '%Deadpool%'
AND tb.primaryTitle NOT IN ('The Big Lebowski', 'Little Miss Sunshine (2006)')
ORDER BY tr.averageRating DESC
LIMIT 10