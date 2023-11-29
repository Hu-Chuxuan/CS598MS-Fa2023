SELECT primaryTitle AS recommended_movie
FROM title_basics
WHERE primaryTitle NOT LIKE '%The Mask%'
AND primaryTitle NOT LIKE '%Super Troopers%'
AND startYear > 2010
AND genres LIKE '%Comedy%'
AND tconst NOT IN ('tt0120511', 'tt0244900', 'tt0175142')
ORDER BY numVotes DESC
LIMIT 5