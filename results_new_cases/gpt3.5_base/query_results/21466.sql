SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Epic%' AND tb.genres LIKE '%Historical%'
AND tb.primaryTitle NOT IN ('The Lost Boys (1987)', "Bram Stoker's Dracula (1992)")
ORDER BY tr.averageRating DESC
LIMIT 5