SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.startYear <= 2005
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Anchorman ', 'A Mighty Wind (2003)', 'Best in Show  (2000)')
ORDER BY tr.averageRating DESC
LIMIT 2