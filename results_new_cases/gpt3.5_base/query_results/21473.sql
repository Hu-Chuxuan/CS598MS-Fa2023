SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Vampire%'
AND tb.startYear <= 1987
AND tb.tconst NOT IN ('tt0093437')  -- exclude The Lost Boys
ORDER BY tr.averageRating DESC
LIMIT 5