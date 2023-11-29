SELECT tb2.primaryTitle AS Recommended_Movie, tb2.startYear AS Release_Year, tb2.genres AS Genre, tb2.runtimeMinutes AS Runtime_Minutes, tr.averageRating AS Average_Rating
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.primaryTitle = 'Zodiac' AND tb2.startYear >= tb1.startYear
JOIN title_ratings AS tr ON tr.tconst = tb2.tconst
WHERE tb2.titleType = 'movie'
ORDER BY tb2.startYear
LIMIT 1