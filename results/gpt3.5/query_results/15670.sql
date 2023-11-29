SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.startYear <= YEAR(GETDATE())
AND tb.primaryTitle NOT IN ('E.T. the Extra-Terrestrial', "Ender's Game")
ORDER BY tr.averageRating DESC
LIMIT 10