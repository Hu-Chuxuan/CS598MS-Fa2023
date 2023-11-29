SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND startYear > 2010
AND tb.tconst NOT IN ('tt1345836', 'tt4154756', 'tt0848228', 'tt2395427', 'tt0848228', 'tt3498820', 'tt1431045', 'tt5463162', 'tt0848228')
ORDER BY tb.numVotes DESC
LIMIT 5