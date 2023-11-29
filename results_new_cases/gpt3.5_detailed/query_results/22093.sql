SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2017
AND tb.genres LIKE '%Action%'
AND tb.tconst <> 'tt3890160'  -- Exclude Baby Driver
AND tb.tconst <> 'tt3469046'  -- Exclude Despicable Me 3
ORDER BY tr.averageRating DESC
LIMIT 10