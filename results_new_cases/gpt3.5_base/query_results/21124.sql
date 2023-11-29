SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS movie_year, tb.genres AS movie_genres, tr.averageRating AS movie_rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' AND tb.startYear = 2018
AND tb.tconst NOT IN ('tt1825683') -- Exclude Black Panther
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5