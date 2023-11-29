SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.tconst != 'tt0133093' -- excluding The Matrix (1999)
AND (tb.primaryTitle != 'John Wick (2014)' OR tb.startYear != 2014)
ORDER BY tr.averageRating DESC
LIMIT 5