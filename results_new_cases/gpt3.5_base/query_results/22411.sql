SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Sci-Fi%'
AND tb.primaryTitle != 'X-Men: The Last Stand'
AND tb.startYear > 2000
ORDER BY tr.averageRating DESC