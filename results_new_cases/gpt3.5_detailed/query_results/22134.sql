SELECT tb.primaryTitle, tb.startYear, tb.genres, tb.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Fantasy%'
AND (tb.primaryTitle != 'Harry Potter and the Deathly Hallows – Part 2' OR tb.startYear != 2011)
AND tb.primaryTitle NOT IN ('True Romance', 'The Godfather', 'Mafia!', 'Goodfellas', 'The Godfather Part II', 'Pulp Fiction')
ORDER BY tr.averageRating DESC
LIMIT 5