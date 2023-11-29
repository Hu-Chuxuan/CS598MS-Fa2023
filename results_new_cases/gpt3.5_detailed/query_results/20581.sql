SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Talladega Nights: The Ballad of Ricky Bobby', 'The Hangover', 'Neighbors')
ORDER BY tr.averageRating DESC
LIMIT 5