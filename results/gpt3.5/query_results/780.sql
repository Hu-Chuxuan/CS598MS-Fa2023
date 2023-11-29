SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.tconst NOT IN ('tt0000005') -- Exclude the movie already seen
AND title_basics.genres LIKE '%Sci-Fi%' -- Recommend Sci-Fi movies
ORDER BY averageRating DESC