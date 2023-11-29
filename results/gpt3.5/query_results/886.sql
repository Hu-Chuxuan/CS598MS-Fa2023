SELECT tb1.primaryTitle AS RecommendedMovie, tb1.startYear AS ReleaseYear, tb1.runtimeMinutes AS RuntimeMinutes, tb1.genres AS Genres, tr.averageRating AS AverageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Drama%'
AND tb1.startYear > 2000
AND tb1.primaryTitle NOT IN ('Mystic River', 'The Last Boy Scout', 'Extremely Loud and Incredibly Close', 'One Hour Photo', 'Blazing Saddles', 'What Lies Beneath', 'The Final Cut')
ORDER BY tr.averageRating DESC, tb1.numVotes DESC
LIMIT 5