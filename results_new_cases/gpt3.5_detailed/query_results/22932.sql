SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (genres LIKE '%War%' OR genres LIKE '%Action%')
AND tb.primaryTitle NOT IN ('Children of the Corn  (1984)', 'The Birds  (1963)', 'Frozen  (2010)', 'The Witch  (2015)')
ORDER BY tr.averageRating DESC
LIMIT 10