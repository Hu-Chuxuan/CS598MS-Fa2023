SELECT DISTINCT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Sci-Fi%' OR tb.genres LIKE '%Documentary%')
AND (tb.primaryTitle != 'Hidden Figures (2016)')
ORDER BY tr.averageRating DESC