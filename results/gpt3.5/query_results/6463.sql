SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' 
AND (tb.primaryTitle NOT IN ('Now You See Me  (2013)', 'Now You See Me 2 (2016)', 'The Illusionist  (2010)') 
OR tb.startYear NOT IN (2013, 2010))
ORDER BY tr.averageRating DESC
LIMIT 5