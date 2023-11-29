SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Spy%')
AND tb.startYear >= 1990
AND tb.startYear <= 2012
AND tb.tconst NOT IN ('tt0110912')  -- Exclude "Pulp Fiction"
ORDER BY tr.averageRating DESC
LIMIT 5