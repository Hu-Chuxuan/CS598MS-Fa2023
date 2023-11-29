SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Killer Clowns from Outer Space (1988)', 'Tucker & Dale vs. Evil (2010)', 'Shaun of the Dead (2004)', 'A Nightmare on Elm Street (1984)')
ORDER BY tr.averageRating DESC
LIMIT 10