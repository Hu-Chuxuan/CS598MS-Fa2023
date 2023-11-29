SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%'
AND tb.startYear >= 2010
AND tb.startYear <= 2015
AND tb.tconst NOT IN ('tt1502407', 'tt1431045', 'tt1013752')  -- excluding movies already watched
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5