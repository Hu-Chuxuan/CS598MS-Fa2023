SELECT tb.primaryTitle AS Recommended_Movie, tb.startYear AS Release_Year, tr.averageRating AS Average_Rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Gone in 60 Seconds', 'National Treasure', 'Pirates of the Caribbean', 'Bad Boys', 'Bad Boys II')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5