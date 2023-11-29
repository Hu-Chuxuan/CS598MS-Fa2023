SELECT * FROM title_basics tb
INNER JOIN
(
SELECT nconst, AVG(rating) AS avg_rating
FROM title_ratings
GROUP BY nconst
) tr
ON tb.tconst = tr.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Musical%'
AND tr.avg_rating > (
SELECT AVG(rating)
FROM title_ratings
WHERE nconst IN (
    SELECT nconst
    FROM name_basics
    WHERE primaryProfession = 'actor' AND knownForTitles LIKE '%La La Land (2016)%'
)
)
ORDER BY avg_rating DESC