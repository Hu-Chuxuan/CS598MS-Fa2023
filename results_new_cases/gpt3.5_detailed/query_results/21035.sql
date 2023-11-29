SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.genres AS movie_genres, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('The Untouchables  (1987)', 'The Pianist  (2002)', 'Whiplash  (2014)')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10