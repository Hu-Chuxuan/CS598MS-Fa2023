SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2000
AND tb1.genres LIKE '%thriller%'
AND tb1.tconst NOT IN ('tt0176415', 'tt2316204', 'tt1446714', 'tt0078748', 'tt0119177')  # Exclude user preference history
GROUP BY tb1.primaryTitle
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5