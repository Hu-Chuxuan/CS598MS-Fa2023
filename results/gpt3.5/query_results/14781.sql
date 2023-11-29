SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2006
AND tb.genres LIKE '%Animation%'
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('It  (2017)', 'Happy Feet (2006)', 'Get Out (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5