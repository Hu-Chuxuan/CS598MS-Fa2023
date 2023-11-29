SELECT * FROM title_basics tb
INNER JOIN
(
SELECT nconst, AVG(rating) AS avg_rating
FROM title_ratings
GROUP BY nconst
) tr
ON tb.tconst = tr.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
AND tr.avg_rating > (
SELECT AVG(rating)
FROM title_ratings
WHERE nconst IN (
    SELECT nconst
    FROM name_basics
    WHERE primaryProfession = 'actor'
    AND knownForTitles IN (
        SELECT tconst
        FROM title_basics
        WHERE titleType ='movie'
        AND isAdult = 0
    )
)
)
ORDER BY avg_rating DESC