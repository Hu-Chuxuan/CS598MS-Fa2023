SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Apocalyptic%' OR tb.genres LIKE '%Post-apocalyptic%'
ORDER BY tr.averageRating DESC
LIMIT 5