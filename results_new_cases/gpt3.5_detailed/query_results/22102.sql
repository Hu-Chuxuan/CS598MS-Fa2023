SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Snow%'
ORDER BY tr.averageRating DESC