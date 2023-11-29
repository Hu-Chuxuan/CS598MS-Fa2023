SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Drama%'
AND tr.averageRating >= 7.5
AND tr.numVotes >= 10000
AND tb.primaryTitle NOT IN ('Moonlight (2016)', 'Hidden Figures (2016)')
LIMIT 5