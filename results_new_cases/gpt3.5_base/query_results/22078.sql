SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.primaryTitle LIKE '%Drive%' OR tb.primaryTitle LIKE '%Half Baked%')
AND (tb.primaryTitle NOT IN ('The Shining', 'A Clockwork Orange', 'Misery'))
AND tb.titleType = 'movie'
ORDER BY tr.averageRating DESC
LIMIT 10