SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Horror%'
AND tb.startYear >= 1980 AND tb.startYear < 1990
AND tb.tconst NOT IN ('tt0093437', 'tt0053125', 'tt0100405')  -- Excluding user's favorite and preferences
ORDER BY tr.averageRating DESC
LIMIT 5