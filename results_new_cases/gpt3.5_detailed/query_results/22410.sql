SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.genres AS movie_genres, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('The Dark Knight', 'X-Men: The Last Stand')
ORDER BY tr.averageRating DESC
LIMIT 10