SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%War%'
AND tb.startYear > 2010
AND (tb.primaryTitle NOT IN ('Lemmy  (2010)', 'Immortal Beloved  (1994)', 'Amadeus  (1984)'))
ORDER BY tr.averageRating DESC
LIMIT 5