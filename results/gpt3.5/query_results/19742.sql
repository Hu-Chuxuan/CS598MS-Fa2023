SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2018
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN (
    SELECT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'A Bad Moms Christmas'
)
ORDER BY tr.averageRating DESC
LIMIT 1