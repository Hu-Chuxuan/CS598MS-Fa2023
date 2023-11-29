SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN (
    SELECT DISTINCT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'Talladega Nights: The Ballad of Ricky Bobby (2006)'
)
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10