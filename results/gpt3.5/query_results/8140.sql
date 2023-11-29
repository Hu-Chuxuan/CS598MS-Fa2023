SELECT tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON nb.nconst = tp.nconst
WHERE tb.genres LIKE '%Action%' 
AND nb.primaryName = 'Bruce Willis'
AND tb.primaryTitle NOT IN ('Die Hard (1988)', 'The Fifth Element', 'Black Panther (2018)')
ORDER BY tr.averageRating DESC
LIMIT 5