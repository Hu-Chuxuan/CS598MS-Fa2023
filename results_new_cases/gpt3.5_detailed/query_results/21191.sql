SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tb.startYear
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.tconst <> 'tt0133093' -- exclude The Matrix (1999)
AND (tb.primaryTitle <> 'John Wick (2014)' OR tb.primaryTitle IS NULL)
AND tb.startYear <= 1999 -- to ensure a similar release year
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 1