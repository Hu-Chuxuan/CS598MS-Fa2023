SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musical%'
AND tb.startYear > 2008
AND tb.primaryTitle NOT IN ('Mamma Mia!  (2008)')
ORDER BY tr.averageRating DESC
LIMIT 5