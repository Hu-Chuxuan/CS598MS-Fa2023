SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (genres LIKE '%Sci-Fi%' OR genres LIKE '%Comedy%')
AND primaryTitle != 'Inception'
ORDER BY tr.averageRating DESC
LIMIT 10