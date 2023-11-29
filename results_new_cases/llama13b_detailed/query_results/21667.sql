SELECT * FROM title_basics tb
INNER JOIN
(
SELECT nconst, AVG(rating) AS avg_rating
FROM title_ratings
GROUP BY nconst
) tr
ON tb.nconst = tr.nconst
WHERE tb.genres LIKE '%Horror%' AND tb.genres LIKE '%Comedy%'
AND NOT EXISTS (
    SELECT 1
    FROM title_principals tp
    WHERE tp.nconst = tb.nconst
    AND tp.category = 'actor'
    AND tp.job = 'leading'
)
AND NOT EXISTS (
    SELECT 1
    FROM title_crew tc
    WHERE tc.nconst = tb.nconst
    AND tc.job = 'director'
)
ORDER BY avg_rating DESC