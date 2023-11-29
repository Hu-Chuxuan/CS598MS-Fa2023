SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear < 1986
AND tb.genres LIKE '%Drama%'
ORDER BY tr.averageRating DESC
LIMIT 5