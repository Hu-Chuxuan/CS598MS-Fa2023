SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tr.averageRating > 7
AND nb.primaryName NOT LIKE '%sick%'
AND (tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Drama%')
AND tb.startYear > 2000
AND tb.primaryTitle NOT IN ('Autumn in New York  (2000)', 'Love Actually (2003)')
GROUP BY tb.primaryTitle
ORDER BY tr.numVotes DESC
LIMIT 5