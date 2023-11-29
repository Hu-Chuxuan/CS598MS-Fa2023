SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Fast Times at Ridgemont High', 'The Breakfast Club (1985)', 'Avengers: Infinity War (2018)')
ORDER BY tr.averageRating DESC
LIMIT 5