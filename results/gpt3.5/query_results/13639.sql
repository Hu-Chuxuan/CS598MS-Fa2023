SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.tconst NOT IN ('tt0083658', 'tt1856101')  -- Exclude the movies the user has already seen
AND genres LIKE '%Sci-Fi%'  -- Recommend movies in the same genre
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5