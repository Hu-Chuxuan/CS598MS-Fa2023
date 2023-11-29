SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp1 ON tp1.tconst = tb1.tconst
JOIN name_basics AS nb ON nb.nconst = tp1.nconst
JOIN title_basics AS tb2 ON tb2.tconst = tp1.tconst
JOIN title_ratings AS tr2 ON tr2.tconst = tb2.tconst
WHERE nb.primaryName = 'Molly Ringwald'
AND tb1.primaryTitle NOT IN ('Pretty in Pink (1986)')
AND tb1.startYear < '1987'
AND tb2.startYear > '1983'
GROUP BY tb1.primaryTitle, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5