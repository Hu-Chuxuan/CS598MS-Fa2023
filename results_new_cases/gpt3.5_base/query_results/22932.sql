SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%War%' OR tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Children of the Corn  (1984)', 'The Birds  (1963)', 'Frozen  (2010)', 'The Witch  (2015)')
ORDER BY tr.averageRating DESC
LIMIT 10