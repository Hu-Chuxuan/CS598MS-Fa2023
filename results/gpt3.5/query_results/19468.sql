SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0151804', 'tt0369441', 'tt0343660')  -- exclude the user's historical preferences
ORDER BY tr.averageRating DESC, tb.startYear ASC
LIMIT 5