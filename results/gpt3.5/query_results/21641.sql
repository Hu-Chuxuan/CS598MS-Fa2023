SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt0268978')  -- Exclude the movie already watched
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5