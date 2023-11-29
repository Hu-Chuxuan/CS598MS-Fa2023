SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 2010
AND (tb.primaryTitle NOT LIKE '%difficult%' OR tb.primaryTitle NOT LIKE '%book%')
AND (tb.primaryTitle LIKE '%great%' OR tb.primaryTitle LIKE '%enjoyed%' OR tb.primaryTitle LIKE '%series%')
ORDER BY tr.averageRating DESC
LIMIT 10