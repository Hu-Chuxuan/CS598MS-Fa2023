SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt0076584')  -- Exclude the historical preference
ORDER BY tr.averageRating DESC
LIMIT 5