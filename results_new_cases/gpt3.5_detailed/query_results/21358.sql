SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear = 1981
AND tb.tconst NOT IN (
    SELECT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'Sam Raimi' OR nb.primaryName = 'Bruce Campbell'
)
AND tb.tconst NOT IN (
    SELECT tconst
    FROM title_basics
    WHERE primaryTitle IN ('City of Angels', 'Dumb and Dumber', 'Pretty Woman')
)
ORDER BY tr.averageRating DESC
LIMIT 5