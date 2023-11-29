SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%apocalyptic%' OR tb.genres LIKE '%post-apocalyptic%'
ORDER BY tr.averageRating DESC
LIMIT 5