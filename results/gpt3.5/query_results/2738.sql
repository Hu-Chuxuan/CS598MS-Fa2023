SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.runtimeMinutes AS duration_minutes, tb.genres AS movie_genres, tr.averageRating AS average_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' AND tb.startYear < 2020
AND tb.primaryTitle NOT IN ('Me Before You ', 'Django  (1966)')
ORDER BY tr.averageRating DESC
LIMIT 5