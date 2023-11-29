SELECT * FROM title_basics tb
JOIN (
    SELECT tconst, AVG(rating) AS avg_rating
    FROM title_ratings
    GROUP BY tconst
) AS tr
ON tb.tconst = tr.tconst
WHERE tb.titleType ='movie'
AND tb.startYear BETWEEN 1950 AND 1993
AND tb.genres LIKE '%Western%'
AND tr.avg_rating > 7
ORDER BY tr.avg_rating DESC