SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 1980
AND tb.genres LIKE '%Family%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Drama%'
AND tr.numVotes >= 1000
AND (tb.primaryTitle NOT IN ('The Adventures of Milo and Otis (1986)', 'Lassie  (1994)', 'Homeward Bound  (1923)') AND tb.primaryTitle NOT LIKE '%Benjji the Hunted%')
ORDER BY tr.averageRating DESC
LIMIT 5