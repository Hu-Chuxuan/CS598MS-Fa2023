SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2005
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('Titanic', 'Hitch', 'Sweet Home Alabama', 'The Wedding Planner')
ORDER BY tr.numVotes DESC
LIMIT 5