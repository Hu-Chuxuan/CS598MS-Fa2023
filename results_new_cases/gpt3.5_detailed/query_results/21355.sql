SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE genres LIKE '%ape%' AND tb.tconst = tconst)
AND tb.primaryTitle NOT IN ('High School Musical 2', 'High School Musical 3: Senior Year (2008)', 'Where the Red Fern Grows  (1974)', 'High School Musical ')
ORDER BY tr.averageRating DESC
LIMIT 10