SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Superhero%'
AND tb.startYear BETWEEN 2000 AND 2021
AND tb.primaryTitle NOT IN ('Iron Man (2008)', 'Top Gun (1986)', 'Black Panther (2018)', 'Fast & Furious (2009)')
ORDER BY tr.averageRating DESC
LIMIT 5