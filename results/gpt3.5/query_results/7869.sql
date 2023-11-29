SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 2010
AND tb.startYear <= 2017
AND tb.tconst NOT IN ('tt0451279', 'tt0974015', 'tt3315342')  -- Excluding user preference history
ORDER BY tr.averageRating DESC
LIMIT 10