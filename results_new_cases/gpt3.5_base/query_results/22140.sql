SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Romance%'
AND (tb.startYear >= 2000 AND tb.startYear <= 2022)
AND tb.primaryTitle NOT IN ('Tron: Legacy (2010)', 'Hell or High Water  (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5