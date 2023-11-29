SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2005
AND tb.genres LIKE '%Thriller%'
AND tb.tconst NOT IN ('tt0073195', 'tt0167404')
ORDER BY tr.numVotes DESC
LIMIT 5