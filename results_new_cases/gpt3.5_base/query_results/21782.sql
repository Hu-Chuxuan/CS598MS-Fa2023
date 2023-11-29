SELECT DISTINCT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.startYear <= 2018
AND (tb.primaryTitle LIKE '%Game Night%' OR tb.primaryTitle LIKE '%Bridesmaids%' OR tb.primaryTitle LIKE '%Girls Trip%')
AND tb.primaryTitle NOT IN ('The Revenant')
ORDER BY tr.averageRating DESC
LIMIT 10