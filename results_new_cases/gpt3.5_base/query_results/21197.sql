SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2017
AND tb.genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'Ant-Man and the Wasp')
AND tb.tconst NOT IN ('tt1825683', 'tt3606756', 'tt4881806', 'tt6781982') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5