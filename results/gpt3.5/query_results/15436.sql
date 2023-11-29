SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear <= YEAR(CURRENT_DATE()) 
AND tr.numVotes >= 1000
AND tb.primaryTitle NOT IN ('The Green Mile  (1999)', 'Mean Girls (2004)')
ORDER BY tr.averageRating DESC
LIMIT 5