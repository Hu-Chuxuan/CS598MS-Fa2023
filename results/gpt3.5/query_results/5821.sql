SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Family%'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Animation%'
AND tb.startYear > 1998
AND tb.tconst NOT IN ('tt0120915', 'tt0126029', 'tt0910970')  -- Exclude Mulan, Shrek, and WALL-E
ORDER BY tr.averageRating DESC
LIMIT 5