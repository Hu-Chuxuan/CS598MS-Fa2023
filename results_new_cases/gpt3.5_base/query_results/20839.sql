SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Slasher%'
AND tb.primaryTitle NOT IN ('Scream', 'Cabin Fever', 'The Texas Chainsaw Massacre 2')
ORDER BY tr.averageRating DESC
LIMIT 5