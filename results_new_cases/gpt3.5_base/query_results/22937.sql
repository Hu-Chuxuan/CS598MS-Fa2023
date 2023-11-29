SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%War%'
AND tb.primaryTitle NOT IN ('Saving Private Ryan (1998)', 'Full Metal Jacket (1987)')
ORDER BY tr.averageRating DESC
LIMIT 10