SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%'
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Memento', 'The Lord of the Rings', 'Inception')
ORDER BY tr.averageRating DESC
LIMIT 1