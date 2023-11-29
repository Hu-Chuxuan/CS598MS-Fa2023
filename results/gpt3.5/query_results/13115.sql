SELECT tb1.primaryTitle AS Recommended_Movie, tb1.startYear AS Release_Year, tb1.genres AS Genres, tr.averageRating AS Average_Rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 1997
AND tb1.genres LIKE '%Comedy%'
AND tb1.tconst NOT IN ('tt0080339', 'tt0114694', 'tt0119714')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5