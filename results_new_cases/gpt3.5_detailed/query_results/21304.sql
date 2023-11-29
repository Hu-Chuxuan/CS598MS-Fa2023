SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.startYear >= 1990
AND tb.tconst NOT IN ('tt0110912', 'tt0298130', 'tt0281358')  -- Exclude user preference history
ORDER BY tr.averageRating DESC
LIMIT 5