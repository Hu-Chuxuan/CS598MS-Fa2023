SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 1979
AND tb.tconst NOT IN (
    SELECT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'Alien'
)
ORDER BY tr.averageRating DESC
LIMIT 5