SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (LOWER(tb.genres) LIKE '%esoteric%' OR LOWER(tb.genres) LIKE '%dark%') 
AND LOWER(tb.genres) LIKE '%comedy%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt1054606')  -- Exclude the user's previously watched movie
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10