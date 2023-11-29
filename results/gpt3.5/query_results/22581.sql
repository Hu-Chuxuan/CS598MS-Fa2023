SELECT tb.originalTitle AS recommended_movie
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.startYear > 2004
AND tb.genres LIKE '%Comedy%'
AND nb.primaryName = 'Bill Murray'
AND tb.originalTitle NOT IN ('The Royal Tenenbaums', 'Meet the Fockers', 'The Life Aquatic with Steve Zissou', 'What About Bob?', 'Stripes', 'Rushmore')
GROUP BY tb.originalTitle
ORDER BY AVG(tb.runtimeMinutes) DESC
LIMIT 5