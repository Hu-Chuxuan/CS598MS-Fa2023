SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0338013', 'tt0434409', 'tt0120382')  -- excluding user's previously watched titles
ORDER BY tr.averageRating DESC
LIMIT 5