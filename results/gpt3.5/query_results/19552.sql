SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle LIKE '%12 Angry Men%' 
AND tb.titleType = 'movie'
AND tb.startYear > 1957 
ORDER BY tr.averageRating DESC
LIMIT 5