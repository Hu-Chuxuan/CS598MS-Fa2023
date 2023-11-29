SELECT DISTINCT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('The Lord of the Rings: The Fellowship of the Ring (2001)', 'Avatar  (2009)', 'Pirates of the Caribbean ')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5