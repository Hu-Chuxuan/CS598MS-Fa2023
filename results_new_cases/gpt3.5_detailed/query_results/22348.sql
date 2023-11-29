SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Mystery%'
AND (tb.primaryTitle <> 'The Amityville Horror' OR tb.startYear <> 1979) 
AND tb.tconst NOT IN ('tt0251127', 'tt0427229', 'tt0209475')
ORDER BY tr.averageRating DESC
LIMIT 5