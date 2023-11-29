SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Time Travel%'
AND tb.startYear < 2012
AND tb.primaryTitle NOT IN ('Looper','Bill & Ted\'s Excellent Adventure','Back to the Future')
ORDER BY tr.averageRating DESC
LIMIT 5