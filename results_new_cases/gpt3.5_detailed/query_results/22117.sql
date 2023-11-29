SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Family%'
AND tb.genres NOT LIKE '%Adult%'
AND tb.tconst NOT IN ('tt0107290', 'tt1421700', 'tt0120338', 'tt0033467', 'tt10276786') -- excluding user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5