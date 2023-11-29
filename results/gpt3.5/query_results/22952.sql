SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_crew AS tc ON tb.tconst = tc.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tr.averageRating > 7
AND tr.numVotes > 1000
AND (tc.directors LIKE '%nm1549922%' OR tc.writers LIKE '%nm1549922%')
AND tb.startYear > 2010
AND tb.genres LIKE '%Action%'
AND tb.titleType = 'movie'
AND tb.primaryTitle != 'Taken'
AND tb.primaryTitle NOT IN ('2012 (2009)')
AND nb.primaryName != 'Liam Neeson'
GROUP BY tb.primaryTitle
ORDER BY RAND()
LIMIT 5