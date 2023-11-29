SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt0121164', 'tt0317705')  -- Exclude movies from user's preference history
ORDER BY tr.averageRating DESC
LIMIT 10