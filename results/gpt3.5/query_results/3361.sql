SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.genres AS movie_genre, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt0369610', 'tt1631867', 'tt3659388')
ORDER BY tr.averageRating DESC
LIMIT 5