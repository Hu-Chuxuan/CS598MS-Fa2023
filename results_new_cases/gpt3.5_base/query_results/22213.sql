SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear >= 1990 
AND tb.startYear <= 2000 
AND tb.primaryTitle != 'Mission: Impossible'
AND tr.averageRating >= 7
AND tb.tconst NOT IN (SELECT tp.tconst 
                      FROM title_principals tp
                      JOIN name_basics nb ON tp.nconst = nb.nconst
                      WHERE nb.primaryName = 'Tom Cruise')
ORDER BY tr.averageRating DESC
LIMIT 5