SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tr.averageRating >= 7.0
AND tb.primaryTitle != '2001: A Space Odyssey'
ORDER BY tr.averageRating DESC
LIMIT 5