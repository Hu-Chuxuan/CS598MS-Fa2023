SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tr.averageRating > 7.5
AND nb.primaryName = 'Tom Cruise'
AND tb.primaryTitle NOT IN ('Minority Report', 'Top Gun', 'Interview with the Vampire', 'Magnolia')
GROUP BY tb.primaryTitle
ORDER BY COUNT(*) DESC
LIMIT 5