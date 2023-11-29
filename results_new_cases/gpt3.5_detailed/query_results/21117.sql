SELECT tb.primaryTitle AS Recommended_Movie, tb.startYear AS Release_Year, tr.averageRating AS Rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Detective%'
AND tb.titleType = 'movie'
AND tb.startYear > 2017
AND tb.primaryTitle NOT IN ('Memento', 'Clue', 'It')
ORDER BY tr.averageRating DESC
LIMIT 5