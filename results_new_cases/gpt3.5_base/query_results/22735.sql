SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Fantasy%'
AND tb.tconst NOT IN ('tt0325980', 'tt0080803')  -- Exclude Pirates of the Caribbean and previous user preference history
ORDER BY tr.averageRating DESC
LIMIT 10