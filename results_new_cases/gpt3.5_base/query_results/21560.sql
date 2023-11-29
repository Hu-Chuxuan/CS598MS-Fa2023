SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE (tb.genres LIKE '%Animation%' OR tb.genres LIKE '%Family%') 
AND (tb.primaryTitle LIKE '%Disney%' OR tb.primaryTitle LIKE '%Pixar%')
AND tr.averageRating > 7
AND (nb.primaryName = 'Will Ferrell' OR nb.primaryName = 'Ben Stiller')
AND tb.primaryTitle NOT IN ('Step Brothers', 'Zoolander')
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC
LIMIT 5