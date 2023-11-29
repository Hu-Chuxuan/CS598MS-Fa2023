SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Children%' OR tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Comedy%')
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt3470600', 'tt3521164', 'tt0251127')  -- excluding previously watched titles
ORDER BY tr.averageRating DESC
LIMIT 10