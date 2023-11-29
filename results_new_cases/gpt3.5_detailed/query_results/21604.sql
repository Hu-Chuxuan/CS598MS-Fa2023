SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Romance%'
AND tb.tconst NOT IN ('tt5462602', 'tt0120815')
ORDER BY tr.averageRating DESC
LIMIT 1