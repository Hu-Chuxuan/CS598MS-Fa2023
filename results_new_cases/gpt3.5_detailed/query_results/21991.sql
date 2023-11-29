SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt2316204', 'tt3263904') 
AND tb.tconst NOT IN ('tt6433880')
ORDER BY tr.averageRating DESC
LIMIT 5