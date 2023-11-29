SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_crew AS tc ON tb.tconst = tc.tconst
JOIN name_basics AS nb ON tc.directors = nb.nconst
WHERE tb.genres LIKE '%Adventure%' AND tb.genres LIKE '%Drama%'
AND tb.startYear >= 2010 AND tb.tconst NOT IN ('tt1663202', 'tt1375666', 'tt1568346')
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5