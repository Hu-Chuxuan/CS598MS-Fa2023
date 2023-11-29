SELECT * FROM title_basics tb
INNER JOIN
(
SELECT nconst, AVG(rating) AS avg_rating
FROM title_ratings
GROUP BY nconst
) tr
ON tb.tconst = tr.nconst
WHERE tb.genres LIKE '%Drama%'
AND tb.runtimeMinutes > 120
AND tb.startYear > 1990
AND tb.endYear < 2020
AND tr.avg_rating > 7
AND tb.primaryTitle NOT IN ('Natural Born Killers', 'Fight Club', 'Gone Girl')
ORDER BY tb.primaryTitle ASC