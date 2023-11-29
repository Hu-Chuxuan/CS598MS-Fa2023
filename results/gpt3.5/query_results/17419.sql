SELECT tb.primaryTitle, tr.averageRating, tb.startYear
FROM title_basics tb
JOIN title_ratings tr
ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Non-Stop', 'The Commuter', 'Taken', 'Unknown')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5