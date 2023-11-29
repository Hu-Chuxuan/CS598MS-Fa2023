SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.genres
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2009
AND tb.titleType = 'movie'
AND tb.primaryTitle != 'A Perfect Getaway'
AND tb.primaryTitle != 'Friday the 13th'
AND tb.primaryTitle != 'The Purge'
ORDER BY tr.averageRating DESC
LIMIT 1