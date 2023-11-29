SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear < 1990
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('The Texas Chain Saw Massacre (1974)', 'Get Out (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5