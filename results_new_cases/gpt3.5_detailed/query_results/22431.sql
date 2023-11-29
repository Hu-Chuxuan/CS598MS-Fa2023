SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Comedy%'
AND tb.startYear > 2000
AND tb.tconst NOT IN ('tt0077631', 'tt2771200', 'tt0295254', 'tt0299658')
ORDER BY tr.averageRating DESC
LIMIT 10