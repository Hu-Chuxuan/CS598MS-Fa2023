SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Documentary%'
AND tb.tconst NOT IN ('tt2119532', 'tt5013056', 'tt4975722', 'tt0113247', 'tt0120815', 'tt0066026')
AND tb.tconst NOT IN ('tt0019729', 'tt0215602', 'tt0050379', 'tt0120815', 'tt0061722', 'tt0066023')
AND tb.startYear >= 2000
AND tr.averageRating >= 7
AND tb.titleType = 'movie'
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5