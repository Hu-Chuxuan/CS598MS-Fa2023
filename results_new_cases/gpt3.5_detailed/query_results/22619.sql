SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%' AND tb.startYear < 1982 AND tr.averageRating > 7
ORDER BY tr.averageRating DESC
LIMIT 5