SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Family%'
AND tb.genres NOT LIKE '%Horror%'
AND tb.runtimeMinutes <= 150
AND tb.tconst NOT IN ('tt0451279', 'tt2245084', 'tt1392170', 'tt1951266')  -- Excluding previously watched movies
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10