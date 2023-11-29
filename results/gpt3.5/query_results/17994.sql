SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS number_of_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Lords of Dogtown (2005)' 
AND tb.genres LIKE '%surf%'
AND tb.tconst NOT IN ('tt1542344', 'tt0427146')  -- excluding already watched movies
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5