SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Action%' OR genres LIKE '%Drama%')
AND startYear >= 2000
AND startYear <= 2005
AND title_basics.tconst NOT IN ('tt0267626')  -- Exclude the movie the user already loves
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5