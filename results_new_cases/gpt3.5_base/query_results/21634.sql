SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN (SELECT tp.tconst
                      FROM title_principals tp
                      JOIN name_basics nb ON tp.nconst = nb.nconst
                      WHERE nb.primaryName = 'Notebook'
                      AND nb.primaryTitle LIKE '%2006%')
ORDER BY tr.averageRating DESC
LIMIT 10