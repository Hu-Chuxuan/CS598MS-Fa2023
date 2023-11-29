SELECT tb1.primaryTitle AS Recommended_Movie, tb1.startYear AS Release_Year, tb1.genres AS Genre, tr.averageRating AS Average_Rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%' 
AND tb1.startYear >= 1980 
AND tb1.startYear < 2000 
AND tr.averageRating >= 6.5 
AND (tb1.primaryTitle NOT IN ('Flubber', 'Honey, I Shrunk the Kids', 'Hook'))
ORDER BY tr.averageRating DESC
LIMIT 5