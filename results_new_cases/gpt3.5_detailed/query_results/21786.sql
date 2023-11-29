SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' 
AND (tb.primaryTitle LIKE '%Annabelle%' OR tb.primaryTitle LIKE '%The Conjuring%')
AND tb.primaryTitle NOT IN ('How to Lose a Guy in 10 Days (2003)', 'Sleepless in Seattle (1993)', 'Sleepless in New York (2014)')
ORDER BY tr.averageRating DESC
LIMIT 10