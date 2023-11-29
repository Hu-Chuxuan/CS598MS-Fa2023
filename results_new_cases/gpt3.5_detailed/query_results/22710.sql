SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (genres LIKE '%Comedy%' OR genres LIKE '%Animation%') 
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt1478338')