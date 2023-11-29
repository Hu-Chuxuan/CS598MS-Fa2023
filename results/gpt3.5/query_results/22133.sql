SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Fantasy%'
AND tb.primaryTitle != 'Harry Potter and the Deathly Hallows – Part 2 (2011)'
AND tb.primaryTitle NOT IN ('The Lord of the Rings: The Fellowship of the Ring (2001)', 'Dr. Strange ')
ORDER BY tr.averageRating DESC
LIMIT 5