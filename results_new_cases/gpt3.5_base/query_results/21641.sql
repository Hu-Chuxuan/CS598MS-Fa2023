SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE 
    tb.startYear > 2016 
    AND tb.genres LIKE '%Action%' 
    AND tb.genres LIKE '%Comedy%' 
    AND nb.primaryName <> 'Ryan Reynolds'
    AND tb.tconst NOT IN ('tt0290334') -- Exclude 'A Beautiful Mind'
ORDER BY tr.averageRating DESC
LIMIT 5