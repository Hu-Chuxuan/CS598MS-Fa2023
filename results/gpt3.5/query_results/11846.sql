SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle LIKE '%Okja%'
AND tb.titleType = 'movie'
AND tb.startYear <= 2022
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Drama%'
AND tb.genres LIKE '%Fantasy%'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt1730768')  -- Exclude Ender's Game
ORDER BY tr.averageRating DESC
LIMIT 10