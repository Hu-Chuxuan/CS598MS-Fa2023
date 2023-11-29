SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear > 1980
AND tb.tconst NOT IN (
    SELECT tconst
    FROM title_basics
    WHERE primaryTitle IN ('Jerry Maguire', 'Field of Dreams')
)
ORDER BY tr.averageRating DESC
LIMIT 10