SELECT tb1.primaryTitle AS recommended_movie,
       tb1.startYear AS release_year,
       tb1.genres AS movie_genres,
       tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear BETWEEN 1990 AND 2010
AND tb1.primaryTitle NOT IN ('The Wedding Singer (1998)', '50 First Dates (2004)', 'Ace Ventura: Pet Detective (1994)', 'Superbad (2007)')
ORDER BY tr.averageRating DESC
LIMIT 5