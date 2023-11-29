SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Baby Driver', 'Thor: Ragnarok', 'Indiana Jones', 'Troy', '300')
ORDER BY tr.averageRating DESC
LIMIT 5