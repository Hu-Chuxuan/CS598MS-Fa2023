SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear >= 2000
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Anchorman: The Legend of Ron Burgundy (2004)')
ORDER BY tr.averageRating DESC
LIMIT 5