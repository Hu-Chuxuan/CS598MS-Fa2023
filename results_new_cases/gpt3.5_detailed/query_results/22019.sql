SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear > 1980
AND tb.startYear < 1990
AND tb.tconst NOT IN ('tt0110413', 'tt0088247', 'tt0110216')  -- excluding the user's previous preferences
ORDER BY tr.averageRating DESC
LIMIT 5