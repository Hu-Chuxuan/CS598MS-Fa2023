SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND (tb.primaryTitle != 'Ant-Man' OR tb.primaryTitle != 'The Avengers' OR tb.primaryTitle != 'Thor: Ragnarok')
ORDER BY tr.averageRating DESC
LIMIT 5