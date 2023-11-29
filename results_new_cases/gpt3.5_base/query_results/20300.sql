SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Superhero%'
AND tb.primaryTitle NOT IN ('Guardians of the Galaxy', 'Guardians of the Galaxy Vol. 2', 'Spider-Man')
ORDER BY tr.averageRating DESC
LIMIT 2