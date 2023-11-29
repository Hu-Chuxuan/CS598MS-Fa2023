SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Idina'
AND tb.startYear = 2005
AND tb.titleType = 'movie'
AND tb.primaryTitle != 'Rent'
AND tb.genres LIKE '%Musical%'
AND tb.primaryTitle NOT IN ('Beauty and the Beast')
GROUP BY tb.primaryTitle
ORDER BY COUNT(*) DESC
LIMIT 1