SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.isAdult = 0
AND tb.startYear <= 2022
AND tr.averageRating >= 6
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt1731141')
ORDER BY tr.averageRating DESC
LIMIT 5