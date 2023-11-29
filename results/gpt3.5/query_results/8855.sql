SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2018
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tr.averageRating >= 7
AND tb.primaryTitle != 'Black Panther'
AND tb.primaryTitle NOT IN ('Hidden Figures')
ORDER BY tr.averageRating DESC, tb.runtimeMinutes ASC
LIMIT 5