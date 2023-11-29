SELECT * FROM title_basics tb
INNER JOIN
(
SELECT nconst, AVG(rating) AS avg_rating
FROM title_ratings
GROUP BY nconst
) tr
ON tb.tconst = tr.nconst
WHERE tb.genres LIKE '%Science Fiction%' AND tb.startYear <= 2005 AND tb.endYear >= 2005
AND tr.avg_rating > (
SELECT AVG(rating)
FROM title_ratings
WHERE nconst IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'actor')
AND startYear <= 2005 AND endYear >= 2005
)
ORDER BY avg_rating DESC