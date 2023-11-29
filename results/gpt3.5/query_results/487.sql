SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Drama%'
AND tb.startYear <= 2023
AND tb.tconst NOT IN ('tt0103919', 'tt0087800', 'tt0250797')
ORDER BY tr.averageRating DESC
LIMIT 5