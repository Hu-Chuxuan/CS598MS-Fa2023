SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' 
AND tb.startYear <= 1980
AND tr.averageRating >= 7
AND tb.tconst NOT IN ('tt0137523', 'tt0167404', 'tt5052448')
ORDER BY tr.averageRating DESC
LIMIT 5