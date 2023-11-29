SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.genres AS movie_genres, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
AND tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tr.averageRating >= 7
AND tb.primaryTitle NOT LIKE '%Spider-Man%'
ORDER BY tr.averageRating DESC
LIMIT 5