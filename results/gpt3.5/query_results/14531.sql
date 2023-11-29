SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' AND tb.genres LIKE '%Soundtrack%'
AND tb.primaryTitle != 'Black Panther (2018)'
AND tb.primaryTitle NOT IN ('Transformers (2007)', 'The Fast and the Furious', 'The Fast and the Furious (2001)')
ORDER BY tr.averageRating DESC
LIMIT 5